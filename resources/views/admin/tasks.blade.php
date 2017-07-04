@extends('layouts.dashboard')

@section('content')
    <div class="box box-solid box-default">
    @foreach ($tasks as $task)
        <li>
            <a href="{{ url("tasks",[$task->id]) }}">{{ $task->name }}</a>
        </li>
    @endforeach
    </div>
    <script></script>
@endsection