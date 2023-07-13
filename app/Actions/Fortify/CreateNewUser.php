<?php

namespace App\Actions\Fortify;

use App\Mail\Emailotp;
use App\Models\refer;
use App\Models\Team;
use App\Models\User;
use App\Models\wallet;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Create a newly registered user.
     *
     * @param  array  $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {

        Validator::make($input, [
            'name' => ['required', 'string', 'max:255'],
            'username' => ['required', 'string', 'max:255', 'unique:users'],
            'phone' => ['required', 'Numeric', 'digit:11'],
            'address' => ['required', 'string',  'min:11'],
            'gender' => ['required', 'string'],
            'dob' => ['required', 'string'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => $this->passwordRules(),
            'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['required', 'accepted'] : '',
        ])->validate();

        return DB::transaction(function () use ($input) {
//
//            $refe= refer::create([
//                'username' => $input['refer'],
//                'newuserid' => $input['username'],
//                'amount' =>100 ,
//            ]);


            $username=$input['username'].rand(111, 999);

            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => 'https://integration.mcd.5starcompany.com.ng/api/reseller/virtual-account3',
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_SSL_VERIFYHOST => 0,
                CURLOPT_SSL_VERIFYPEER => 0,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS => array('account_name' => $input['name'],
                    'business_short_name' => 'RENO','uniqueid' => $username,
                    'email' => $input['email'],'dob' => $input['dob'],
                    'address' => $input['address'],'gender' => $input['gender'],
                    'phone' =>'08146328645','webhook_url' => 'https://protocolcheapdata.com.ng/api/run'),
                CURLOPT_HTTPHEADER => array(
                    'Authorization: MCD_KEY_567897668ED675R6T7YIOVG6IO4'
                ),
            ));

            $response = curl_exec($curl);

            curl_close($curl);
            $data = json_decode($response, true);
            if ($data['success']==1){
                $account = $data["data"]["customer_name"];
                $number = $data["data"]["account_number"];
                $bank = $data["data"]["bank_name"];
                $wallet= wallet::create([
                    'username' => $input['username'],
                    'balance' => 0,
                    'account_number1'=>$number,
                    'account_name1'=>$account,
                    'bank'=>$bank,
                ]);


            }elseif ($data['success']==0){
                $wallet= wallet::create([
                    'username' => $input['username'],
                    'balance' => 0,
                ]);

            }


            $receiver=$input ['email'];
            $admin= 'info@protocolcheapdata.com.ng';
            Mail::to($receiver)->send(new Emailotp($input));
            Mail::to($admin)->send(new Emailotp($input));




            return tap(User::create([
                'name' => $input['name'],
                'username' => $input['username'],
                'phone_no' => $input['phone'],
                'email' => $input['email'],
                'password' => $input['password'],
            ]),


                function (User $user) {
                $this->createTeam($user);
            });

        });
    }

    /**
     * Create a personal team for the user.
     *
     * @param  \App\Models\User  $user
     * @return void
     */
    protected function createTeam(User $user)
    {
        $user->ownedTeams()->save(Team::forceCreate([
            'user_id' => $user->id,
            'name' => explode(' ', $user->name, 2)[0]."'s Team",
            'personal_team' => true,
        ]));
    }
}
