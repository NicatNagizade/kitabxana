<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKitabsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kitab', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ad');
            $table->string('yazar');
            $table->string('janr')->nullable();
            $table->string('sekil')->nullable();
            $table->string('link')->nullable();
            $table->integer('reytinq')->nullable();
            $table->text('haqqinda')->nullable();
            $table->integer('user_id')->nullable();
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
        Schema::dropIfExists('kitabs');
    }
}
