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
Route::get('/',function(){return redirect('/kitabxana');});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['prefix'=>'/kitabxana'],function(){
    Route::get('/','KitabController@index');
    Route::get('/create','KitabController@create');
    Route::post('/','KitabController@store');
    Route::get('/{id}','KitabController@show');
    Route::post('/{id}','KitabController@update');
    Route::get('/delete/{id}','KitabController@destroy');
    Route::get('/{id}/edit','KitabController@edit');
});




