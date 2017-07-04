<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Task;

class TasksController extends Controller
{
    //
    public function index()
    {
        $tasks = Task::all();
        return view('admin.tasks', compact('tasks'));
    }
}
