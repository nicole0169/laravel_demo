var gulp = require('gulp');

// 拷贝任何需要的文件
gulp.task("copyfiles", function () {
    gulp.src("vendor/almasaeed2010/adminlte/dist/css/AdminLTE.min.css")
        .pipe(gulp.dest("public/assets/css"));
    gulp.src("vendor/almasaeed2010/adminlte/dist/css/skins/skin-blue.min.css")
        .pipe(gulp.dest("public/assets/css"));
    gulp.src("vendor/almasaeed2010/adminlte/bootstrap/css/bootstrap.min.css")
        .pipe(gulp.dest("public/assets/css"));
    gulp.src("vendor/almasaeed2010/adminlte/plugins/jQuery/jquery-2.2.3.min.js")
        .pipe(gulp.dest("public/assets/js"));
    gulp.src("vendor/almasaeed2010/adminlte/bootstrap/js/bootstrap.min.js")
        .pipe(gulp.dest("public/assets/js"));
    gulp.src("vendor/almasaeed2010/adminlte/dist/js/app.min.js")
        .pipe(gulp.dest("public/assets/js"));
    gulp.src("vendor/almasaeed2010/adminlte/bootstrap/fonts/**")
        .pipe(gulp.dest("public/assets/fonts"));
    gulp.src("vendor/almasaeed2010/adminlte/dist/img/**")
        .pipe(gulp.dest("public/assets/img"));

    //Datatables
    gulp.src("vendor/almasaeed2010/adminlte/plugins/datatables/**")
        .pipe(gulp.dest("public/assets/datatables"));

    //SlimScroll
    gulp.src("vendor/almasaeed2010/adminlte/plugins/slimScroll/**")
        .pipe(gulp.dest("public/assets/slimScroll"));

    //FastClick
    gulp.src("vendor/almasaeed2010/adminlte/plugins/fastclick/**")
        .pipe(gulp.dest("public/assets/fastclick"));
});
