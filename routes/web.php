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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/hello', function () {
    $name = 'Zen';
    return view('hello', ['name' => $name]);
});

Route::match(['get', 'post'], '/upload', function () {
    return view('upload');
});

Route::get('tasks', 'TasksController@index');

Route::get('tasks/{task}', 'TasksController@show');
/*
Route::get('/tasks', function () {
    //$tasks = DB::table('tasks')->latest()->get();
    $completedTasks = Task::latest()->completed()->get();
    $unCompletedTasks = Task::latest()->unCompleted()->get();
    return view('tasks.index', compact('completedTasks', 'unCompletedTasks'));
});

Route::get('/tasks/{task}', function ($id) {
    //$task = DB::table('tasks')->find($id);
    $task = Task::findorFail($id);
    return view('tasks.show', compact('task'));
});
*/
