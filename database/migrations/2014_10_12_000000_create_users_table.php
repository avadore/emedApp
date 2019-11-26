<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('firstName');
            $table->string('lastName');
            $table->string('personnel');
            $table->string('location');
            $table->string('profilePicture')->nullable();
            $table->string('specOrProfession')->nullable();
            $table->date('dateOfBirth')->nullable();
            $table->string('phoneNumbers')->nullable();
            $table->string('yearsOfPractice')->nullable();
            $table->string('interest')->nullable();
            $table->string('aboutMe')->nullable();
            $table->string('email')->unique();
            $table->string('folioNo')->unique()->nullable();
            $table->string('regNo')->unique()->nullable();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
