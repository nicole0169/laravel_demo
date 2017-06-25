<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>
</head>
<body>
<h3>User Login</h3>
<div>
    <form action="/login" method="post">
        <div>
            <label>Username:</label><input type="text" name="username">
        </div>
        <div>
            <label>Password:</label><input type="password" name="password">
        </div>
        <div>
            {{csrf_field()}}
            <button type="submit">Login</button>
        </div>
    </form>
</div>
</body>
</html>
