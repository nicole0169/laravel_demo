<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserFilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_files', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('uid');
            $table->string('filepath', 250);
            $table->string('fileext', 50);
            $table->bigInteger('filesize');
            $table->string('sizedisp', 200);
            $table->string('originname', 250);
            $table->string('filename', 250);
            $table->string('sha1_hex', 50);
            $table->tinyInteger('status');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_files');
    }
}
