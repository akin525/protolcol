<?php

use App\Http\Controllers\admin\HonorApi;
use App\Http\Controllers\admin\CandCController;
use App\Http\Controllers\admin\McdController;
use App\Http\Controllers\admin\ProductController;
use App\Http\Controllers\admin\TransactionController;
use App\Http\Controllers\admin\UsersController;
use App\Http\Controllers\admin\SetController;
use App\Http\Controllers\admin\VertualAController;
use App\Http\Controllers\admin\DashboardController;
use App\Http\Controllers\admin\LoginController;
use App\Http\Controllers\AlltvController;
use App\Http\Controllers\AirtimeController;
use App\Http\Controllers\EkectController;
use App\Http\Controllers\listdata;
use App\Http\Controllers\RefersController;
use App\Http\Controllers\ResellerController;
use App\Http\Controllers\VertualController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\FundController;
use App\Http\Controllers\BillController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {
//    if (Auth()->user()) {
//        return redirect(route('dashboard'))
//            ->withSuccess('Signed in');
//
//    }else {
//        return view('auth.login');
//    }
//});
Route::post('log', [AuthController::class, 'customLogin'])->name('log');
Route::post('passw', [AuthController::class, 'pass'])->name('passw');
Route::get('/', [AuthController::class, 'landing'])->name('home');
Route::get('/logout', function(){
    Auth::logout();
    return Redirect::to('login');
});

//Route::get('select', function () {
//    return view('select');
//});
//Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//    return view('dashboard');
//})->name('dashboard');
Route::middleware(['auth'])->group(function () {
Route::get('tv', [AlltvController::class, 'tv'])->name('tv');
Route::get('select', [AuthController::class, 'select'])->name('select');
Route::get('select1', [AuthController::class, 'select1'])->name('select1');
Route::post('tvp', [AlltvController::class, 'paytv'])->name('tvp');
Route::get('paytv', [AlltvController::class, 'paytv'])->name('paytv');
Route::post('verifytv', [AlltvController::class, 'verifytv'])->name('verifytv');
Route::get('listdata', [listdata::class, 'list'])->name('listdata');
Route::get('listtv', [AlltvController::class, 'listtv'])->name('listv');
Route::get('listelect', [EkectController::class, 'listelect'])->name('listelect');
Route::get('elect', [EkectController::class, 'electric'])->name('elect');
Route::post('velect', [EkectController::class, 'verifyelect'])->name('velect');
Route::post('payelect', [EkectController::class, 'payelect'])->name('payelect');
Route::get('invoice', [AuthController::class, 'invoice'])->name('invoice');
Route::get('charges', [AuthController::class, 'charges'])->name('charges');
Route::get('dashboard', [AuthController::class, 'dashboard'])->name('dashboard');
Route::get('referal', [AuthController::class, 'refer'])->name('referal');
Route::post('mp', [ResellerController::class, 'reseller'])->name('mp');
Route::get('reseller', [ResellerController::class, 'sell'])->name('reseller');
Route::get('upgrade', [ResellerController::class, 'apiaccess'])->name('upgrade');
Route::post('buyairtime', [AirtimeController::class, 'airtime'])->name('buyairtime');
Route::post('buyairtime1', [AirtimeController::class, 'honor'])->name('buyairtime1');
//Route::get('airtime1', [AuthController::class, 'airtime'])->name('airtime1');
Route::get('airtime', [AuthController::class, 'airtime'])->name('airtime');
    Route::get('buydata/{selectedValue}', [AuthController::class, 'buydata'])->name('buydata');
    Route::get('redata/{selectedValue}', [AuthController::class, 'redata'])->name('redata');
    Route::get('getOptions/{selectedValue}', [AuthController::class, 'netwplanrequest'])->name('getOptions');

    Route::post('pre', [AuthController::class, 'pre'])->name('pre');
Route::post('bill', [BillController::class, 'bill'])->name('bill');
Route::get('referwith', [RefersController::class, 'index'])->name('referwith');
Route::post('referwith1', [RefersController::class, 'with'])->name('referwith1');
Route::get('fund', [FundController::class, 'fund'])->name('fund');
Route::get('tran/{reference}', [FundController::class, 'tran'])->name('tran');
Route::get('vertual', [VertualController::class, 'vertual'])->name('vertual');


});



Route::get('admin', function () {

    return view('admin.login');

});

Route::post('cuslog', [LoginController::class, 'login'])->name('cuslog');


Route::middleware(['auth'])->group(function () {

    Route::get('admin/dashboard', [DashboardController::class, 'dashboard'])->name('admin/dashboard');
    Route::get('admin/mcdtransaction', [DashboardController::class, 'mcdtran'])->name('admin/mcdtransaction');
    Route::get('admin/refer', [DashboardController::class, 'ref'])->name('admin/refer');
    Route::get('admin/setmin', [SetController::class, 'index1'])->name('admin/setmin');
    Route::post('admin/min', [SetController::class, 'min'])->name('admin/min');
    Route::get('admin/setcharge', [SetController::class, 'index'])->name('admin/setcharge');
    Route::post('admin/setc', [SetController::class, 'charge'])->name('admin/setc');
    Route::get('admin/webbook', [DashboardController::class, 'webbook'])->name('admin/webbook');
    Route::get('admin/vertual', [VertualAController::class, 'list'])->name('admin/vertual');
    Route::post('admin/update', [VertualAController::class, 'updateuser'])->name('admin/update');
    Route::post('admin/pass', [VertualAController::class, 'pass'])->name('admin/pass');
    Route::get('admin/credit', [CandCController::class, 'cr'])->name('admin/credit');
    Route::post('admin/cr', [CandCController::class, 'credit'])->name('admin/cr');
    Route::post('admin/ch', [CandCController::class, 'charge'])->name('admin/ch');
    Route::post('admin/finduser', [UsersController::class, 'finduser'])->name('admin/finduser');
    Route::get('admin/finds', [UsersController::class, 'fin'])->name('admin/finds');
    Route::get('admin/server', [UsersController::class, 'server'])->name('admin/server');
    Route::get('admin/noti', [UsersController::class, 'mes'])->name('admin/noti');
    Route::get('admin/air', [ProductController::class, 'air'])->name('admin/air');
    Route::get('admin/up/{id}', [UsersController::class, 'up'])->name('admin/up');
    Route::get('admin/up1/{id}', [ProductController::class, 'pair'])->name('admin/up1');
    Route::get('admin/verify', [McdController::class, 'index'])->name('admin/verify');
    Route::get('admin/profile/{username}', [UsersController::class, 'profile'])->name('admin/profile');
    Route::get('admin/charge', [CandCController::class, 'sp'])->name('admin/charge');
    Route::get('admin/product', [productController::class, 'index'])->name('admin/product');
    Route::get('admin/product1', [productController::class, 'index1'])->name('admin/product1');
    Route::get('admin/product2', [productController::class, 'index2'])->name('admin/product2');
//    Route::post('admin/do', [McdController::class, 'edit'])->name('admin/do');
    Route::post('admin/do', [ProductController::class, 'edit'])->name('admin/do');
    Route::post('admin/do1', [ProductController::class, 'edit1'])->name('admin/do1');
    Route::post('admin/do2', [ProductController::class, 'edit2'])->name('admin/do2');
    Route::post('admin/not', [UsersController::class, 'me'])->name('admin/not');
    Route::get('admin/editproduct1/{id}', [ProductController::class, 'in1'])->name('admin/editproduct1');
    Route::get('admin/editproduct2/{id}', [ProductController::class, 'in2'])->name('admin/editproduct2');
    Route::get('admin/editproduct/{id}', [ProductController::class, 'in'])->name('admin/editproduct');
    Route::get('admin/pd/{id}', [ProductController::class, 'on'])->name('admin/pd');
    Route::get('admin/pd1/{id}', [ProductController::class, 'on1'])->name('admin/pd1');
    Route::get('admin/pd2/{id}', [ProductController::class, 'on2'])->name('admin/pd2');
    Route::get('admin/user', [UsersController::class, 'index'])->name('admin/user');
    Route::get('admin/deposits', [TransactionController::class, 'in'])->name('admin/deposits');
    Route::get('admin/bills', [TransactionController::class, 'bill'])->name('admin/bills');
    Route::get('admin/finddeposite', [TransactionController::class, 'index'])->name('admin/finddeposite');
    Route::post('admin/depo', [TransactionController::class, 'finduser'])->name('admin/depo');


});
Route::get('admin/api', [HonorApi::class, 'api'])->name('admin/api');


