<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Laravel</title>
</head>
<body>
<div>Upload File.</div>
<div>
    <form action="/upload" method="post" enctype="multipart/form-data">
        <div>
            <label>UserId:</label><input type="text" id="uid" name="userid">
        </div>
        <div>
            <input type="file" id="inputfile" name="uploadfile">
        </div>
        <div>
            {{csrf_field()}}
            <button type="submit">Submit</button>
        </div>
    </form>
</div>
</body>
</html>
