<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});


Route::group(['prefix' => 'secure'], function () {
    Voyager::routes();
});


# Frontend routes
Route::get('/exhibit/{id}/display', 'ExhibitionController@displayBooth');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/lobby', 'HomeController@lobby');
