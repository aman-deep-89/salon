<?php
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
Route::get('/license', 'LicenseController@index')->name('license');
Route::get('/', function () {
    return view('demo');
})->middleware('auth');
Auth::routes();
Route::group(array('before' => 'auth'), function() 
{
Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');
Route::get('/home', 'HomeController@index')->name('demo');
Route::get('/add_category', 'HomeController@add_category');
Route::post('/save_service', 'HomeController@save_service');
Route::resource('category', 'ServiceCategoryController');
Route::resource('services', 'ServiceController');
Route::resource('items', 'ItemsController');
Route::resource('customers', 'CustomerController');
Route::resource('employees', 'EmployeeController');
Route::get('/transactions/report', 'TransactionController@report');
Route::post('/transactions/show_report', 'TransactionController@show_report');
Route::post('/customers/search_customer', 'TransactionController@search_customer');
Route::post('/transactions/get_ajax_report_data', 'TransactionController@get_ajax_report_data');
Route::resource('transactions', 'TransactionController');
Route::get('/customers', 'CustomerController@index');
Route::get('/customers/list', 'CustomerController@index');
Route::get('/customers/open', 'CustomerController@open');
Route::post('/customers/get_ajax_report_data', 'CustomerController@get_ajax_report_data');
Route::get('/customers/get_ajax_report_data', 'CustomerController@get_ajax_report_data');
/*Route::get('/transactions/show_report', function () {
    return App\Transactions::paginate(15);    
    //
});*/
Route::get('/transactions/show_report','TransactionController@show_report');
Route::get('/transactions/print_invoice/{id}','TransactionController@print_invoice');
Route::get('change-password', 'ChangePasswordController@index');
Route::post('change-password', 'ChangePasswordController@store')->name('change.password');
//Route::get('/category_list', 'ServiceCategoryController@index');
//Route::get('/edit_category/{id}', [ 'as' => 'Home.edit_category','uses'=>'HomeController@edit_category/{id}']);
/*Route::get('/edit_category/{id}', function($id)
{
    return 'User '.$id;
});*/
});