@extends('layouts.tables')

@section('content')
    <div class="box-header">
        <h3 class="box-title">Tasks Data Table</h3>
    </div>
    <div class="box-body">
        <table id="tasksTable" class="table table-bordered table-hover">
            <thead>
            <tr>
                <th>Task name</th>
                <th>Created</th>
                <th>Updated</th>
                <th>Completed</th>
            </tr>
            </thead>
            <tbody>
            @foreach ($tasks as $task)
                <tr>
                    <td><a href="{{ url("tasks",[$task->id]) }}">{{$task->name}}</a></td>
                    <td>{{$task->created_at}}</td>
                    <td>{{$task->updated_at}}</td>
                    <td>{{$task->completed}}</td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>

    <script></script>
@endsection