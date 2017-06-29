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

use \App\Task;
use \Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/hello/{name?}', function ($name = 'Zen') {
    // $name = 'Zen';
    return view('hello', ['name' => $name]);
});

Route::get('/api/tasks/{task}', function (App\Task $task) {
    dd($task);
});

Route::match(['get', 'post'], '/upload', 'UserFilesController@index');

Route::get('tasks', 'TasksController@index');

Route::get('tasks/{task}', 'TasksController@show');

Route::match(['get', 'post'], '/login', 'UserLoginController@index');

Route::get('/admin', function () {
    return view('admin.index');
});