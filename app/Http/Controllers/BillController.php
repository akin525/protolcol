<?php
namespace App\Http\Controllers;
use App\Mail\Emailfund;
use App\Mail\Emailtrans;
use App\Models\big;
use App\Models\bo;
use App\Models\data;
use App\Models\deposit;
use App\Models\easy;
use App\Models\profit;
use App\Models\server;
use App\Models\setting;
use App\Models\wallet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use RealRashid\SweetAlert\Facades\Alert;
use Session;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class BillController extends Controller
{

    public function bill(Request $request)
    {
        $request->validate([
            'productid' => 'required',
        ]);
        if (Auth::check()) {
            $user = User::find($request->user()->id);
            $wallet = wallet::where('username', $user->username)->first();
            $serve = server::where('status', '1')->first();
            if ($serve->name == 'honorworld') {
                $product = big::where('id', $request->productid)->first();
            } elseif ($serve->name == 'mcd') {
                $product = data::where('id', $request->productid)->first();
            }elseif ($serve->name == 'easyaccess') {
                $product = easy::where('id', $request->productid)->first();
            }

            if ($user->apikey == '') {
                $amount = $product->tamount;
            } elseif ($user != '') {
                $amount = $product->ramount;
            }

            if ($wallet->balance < $amount) {
                $mg = "You Cant Make Purchase Above" . "NGN" . $amount . " from your wallet. Your wallet balance is NGN $wallet->balance. Please Fund Wallet And Retry or Pay Online Using Our Alternative Payment Methods.";
                Alert::error('Insufficient Balance', $mg);

                return redirect(route('dashboard'));

            }
            if ($request->amount < 0) {

                $mg = "error transaction";
                Alert::error('Error', $mg);
                return redirect(route('dashboard'));

            }
            $bo = bo::where('refid', $request->id)->first();
            if (isset($bo)) {
                $mg = "duplicate transaction";
                Alert::error('Error', $mg);
                return redirect(route('dashboard'));

            } else {
                $user = User::find($request->user()->id);
//                $bt = data::where("id", $request->productid)->first();
                $wallet = wallet::where('username', $user->username)->first();


                $gt = $wallet->balance - $request->amount;


                $wallet->balance = $gt;
                $wallet->save();

                $object = json_decode($product);
                $object->number = $request->number;
                $object->refid=$request->id;
                $json = json_encode($object);

                $daterserver = new DataserverController();
                $mcd = server::where('status', "1")->first();

                $success = "1";
                $po = $amount - $product->amount;

                $bo = bo::create([
                    'username' => $user->username,
                    'plan' => $product->network . '|' . $product->plan,
                    'amount' => $request->amount,
                    'server_res' => 'response',
                    'result' => $success,
                    'phone' => $request->number,
                    'refid' => $request->id,
//                    'balance'=>$gt,
                ]);

                $profit = profit::create([
                    'username' => $user->username,
                    'plan' => $product->network . '|' . $product->plan,
                    'amount' => $po,
                ]);

                if ($mcd->name == "honorworld") {
                    $response = $daterserver->honourwordbill($object);

                    $data = json_decode($response, true);
                    $success = "";
                    if ($data['code'] == '200') {
                        $success = 1;
                        $ms = $data['message'];


                        $name = $product->plan;
                        $am = "$product->plan  was successful delivered to";
                        $ph = $request->number;


                        $receiver = $user->email;
                        $admin = 'info@protocolcheapdata.com.ng';

//                        Mail::to($receiver)->send(new Emailtrans($bo));
//                        Mail::to($admin)->send(new Emailtrans($bo));
//                        Mail::to($admin2)->send(new Emailtrans($bo));

                        Alert::success('Success', $am.' '.$ph);
                        return redirect(route('dashboard'));

                    } elseif ($data['code'] == '300') {
                        $success = 0;
                        $zo = $wallet->balance + $request->amount;
                        $wallet->balance = $zo;
                        $wallet->save();

                        $name = $product->plan;
                        $am = "NGN $request->amount Was Refunded To Your Wallet";
                        $ph = ", Transaction fail";
                        Alert::error('Error', $am.' '.$ph);


                        return redirect(route('dashboard'));
                    }
                } else if ($mcd->name == "mcd") {
                    $response = $daterserver->mcdbill($object);

                    $data = json_decode($response, true);

                    if ($data['success']==1) {

                        $name = $product->plan;
                        $am = "$product->plan  was successful delivered to";
                        $ph = $request->number;


                        $receiver = $user->email;
                        $admin = 'info@protocolcheapdata.com.ng';

                        Mail::to($receiver)->send(new Emailtrans($bo));
                        Mail::to($admin)->send(new Emailtrans($bo));

                        Alert::success('Success', $am.' '.$ph);

                        return redirect(route('select'));

                    }elseif ($data['success']==0) {
                        $success = 0;
                        $zo = $wallet->balance + $request->amount;
                        $wallet->balance = $zo;
                        $wallet->save();

                        $name = $product->plan;
                        $am = "NGN $request->amount Was Refunded To Your Wallet";
                        $ph = ", Transaction fail";
                        Alert::error('Error', $am.' '.$ph);
                        return redirect(route('select'));
                    }

                }elseif ($mcd->name == "easyaccess"){
                    $response = $daterserver->easyaccess($object);

                    $data = json_decode($response, true);
//                    return $data;
                    if ($data['success']=='true') {

                        $name = $product->plan;
                        $am = "$product->plan  was successful delivered to";
                        $ph = $request->number;


                        $receiver = $user->email;
                        $admin = 'info@protocolcheapdata.com.ng';

                        Mail::to($receiver)->send(new Emailtrans($bo));
                        Mail::to($admin)->send(new Emailtrans($bo));

                        Alert::success('Success', $am.' '.$ph);

                        return redirect(route('select'));
                    }elseif ($data['success']=='false'){
                        $zo = $wallet->balance + $request->amount;
                        $wallet->balance = $zo;
                        $wallet->save();

                        $name = $product->plan;
                        $am = "NGN $request->amount Was Refunded To Your Wallet";
                        $ph = ", Transaction fail";
                        Alert::error('Error', $am.' '.$ph);


                        return redirect(route('dashboard'));
                    }


                    }


//return $response;
            }
        }
    }
}




