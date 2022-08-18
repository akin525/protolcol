<?php
namespace App\Http\Controllers;
use App\Mail\Emailfund;
use App\Mail\Emailtrans;
use App\Models\bo;
use App\Models\data;
use App\Models\deposit;
use App\Models\profit;
use App\Models\server;
use App\Models\setting;
use App\Models\wallet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Session;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
class DataserverController extends Controller
{

    public function honourwordbill($request)
    {

//return $request;
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.honourworld.com.ng/api/v1/purchase/data',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS =>'{
  "network" : "'.$request->network.'",
   "planId" : "'.$request->plan_id.'",
  "phone" : "'.$request->number.'"
}',
            CURLOPT_HTTPHEADER => array(
                'Authorization: Bearer ',
                'Accept: application/json',
                'Content-Type: application/json'
            ),
        ));

        $response = curl_exec($curl);

        curl_close($curl);
//        echo $response;

                    return $response;

            }

    public function mcdbill( $request)
    {

        $resellerURL = 'https://app2.mcd.5starcompany.com.ng/api/reseller/';
        $curl = curl_init();

                     curl_setopt_array($curl, array(
                      CURLOPT_URL => $resellerURL.'pay',
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => '',
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => 'POST',
                   CURLOPT_POSTFIELDS => array('service' => 'data','coded' => $request->cat_id,'phone' => $request->number, 'reseller_price' => $request->tamount),

                         CURLOPT_HTTPHEADER => array(
                             'Authorization: MCD_KEY_567897668ED675R6T7YIOVG6IO4'
                         )));


        $response = curl_exec($curl);

                curl_close($curl);
//                echo $response;


                return $response;

            }
            public function easyaccess($request)
            {
                $curl = curl_init();
                curl_setopt_array($curl, array(
                    CURLOPT_URL => "https://easyaccess.com.ng/api/data.php",
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "POST",
                    CURLOPT_POSTFIELDS => array(
                        'network' =>$request->plan_id,
                        'mobileno' => $request->number,
                        'dataplan' => $request->code,
                        'client_reference' => 'tranx'.$request->refid, //update this on your script to receive webhook notifications
                    ),
                    CURLOPT_HTTPHEADER => array(
                        "AuthorizationToken: f406941e6452ea82e823b7cfad3096e3", //replace this with your authorization_token
                        "cache-control: no-cache"
                    ),
                ));
                $response = curl_exec($curl);
                curl_close($curl);
//                echo $response;

                return$response;
            }
}



