<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1>任务列表</h1>
<div>
    <h2>未完成</h2>
    <ul>
        @foreach ($unCompletedTasks as $task)
            <li>
                <a href="{{ url("tasks",[$task->id]) }}">{{ $task->name }}</a>
            </li>
        @endforeach

    </ul>
</div>
<div>
    <h2>已完成</h2>
    <ul>
        @foreach ($completedTasks as $task)
            <li>
                <a href="{{ url("tasks",[$task->id]) }}">{{ $task->name }}</a>
            </li>
        @endforeach

    </ul>
</div>
</body>
</html>