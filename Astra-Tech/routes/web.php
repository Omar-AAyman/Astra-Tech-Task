<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

Route::get('/', function () {
    return view('welcome');
});


Route::prefix('/adminTool')->controller(HomeController::class)->name('users')->group(function (){
    Route::get('/','index')->name('.all');
    Route::post('/users/import', 'import')->name('.import');
    Route::get('/users/export','export')->name('.export');
});


