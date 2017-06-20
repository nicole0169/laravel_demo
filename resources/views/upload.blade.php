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
    <input type="file" id="inputfile" name="uploadfile">
    <button type="submit">Submit</button>
</form>
</div>
</body>
</html>
