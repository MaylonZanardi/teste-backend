<?php

//Retorna a view inicial para obtenção do token.
Route::get('/', function () {
    return view('get_token');
});

//Rota sem autentificação (dados mascaradas).
Route::get('/users/{id}', 'UserController@show');