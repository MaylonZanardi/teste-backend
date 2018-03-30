<?php

use Illuminate\Http\Request;


//Rotas definidas para serem apenas com autentificação e com alias '/api/'. (CRUD Users).
Route::group (['middleware' => 'auth:api'], function(){
    Route::resource('users', 'UserController');
});

//Rota sem autentificação (dados mascarados).
Route::get('/users/{id}', 'UserController@show');



