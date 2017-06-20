<?php

namespace App\Http\Controllers;

use App\Task;
use Illuminate\Http\Request;

class TasksController extends Controller
{
    //
    public function index()
    {
        $completedTasks = Task::latest()->completed()->get();
        $unCompletedTasks = Task::latest()->unCompleted()->get();
        return view('tasks/index', compact('completedTasks', 'unCompletedTasks'));
    }

    public function show($task)
    {
        $task = Task::findorFail($task);
        return view('tasks/show', compact('task'));
    }
}
