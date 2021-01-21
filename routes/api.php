<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::group(['prefix' => 'auth'], function () {

    Route::post('login', 'AuthController@login');
    Route::post('register', 'AuthController@register');

    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');
    Route::post('logout', 'AuthController@logout');
});


Route::group(['middleware' => 'jwt'], function () {

    Route::apiResources(['user' => 'API\UserController']);
    Route::get('profile','API\UserController@profile');
    Route::post('update-profile','API\UserController@updateProfile');
    Route::post('update-password','API\UserController@updatePassword');

    Route::apiResource('roles','API\RoleController');
    Route::apiResource('permissions','API\PermissionController');

    Route::apiResources(['customers'=> 'API\CustomerController']);

    Route::get('basic-setting','API\BasicSettingController@getBasicSetting');
    Route::post('basic-setting-update','API\BasicSettingController@updateBasicSetting');

    Route::get('email-setting','API\EmailSettingController@getEmailSetting');
    Route::post('email-setting-update','API\EmailSettingController@updateEmailSetting');
    Route::get('get-email-template','API\EmailSettingController@getEmailtemplate');
    Route::post('update-email-template','API\EmailSettingController@updateEmailTemplate');

    Route::get('sms-api','API\SmsSettingController@getSMApiSetting');
    Route::post('sms-api-update','API\SmsSettingController@updateSMApiSetting');

    Route::post('update-logo','API\BasicSettingController@updateLogoFavicon');

    Route::get('roles-select','API\RoleController@roleSelect');

});

