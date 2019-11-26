<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCertifiedDoctorsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('certified_doctors', static function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('firstName');
            $table->string('lastName');
            $table->string('folioNo');
            $table->string('registerNo');
            $table->string('specialization_1');
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
        Schema::dropIfExists('certified_doctors');
    }
}
