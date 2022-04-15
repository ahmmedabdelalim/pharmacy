<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {

		$table->bigInteger('id')->unsigned();
		$table->string('f_name',100)->nullable();
		$table->string('l_name',100)->nullable();
		$table->string('email',100)->nullable();
		$table->string('image',100)->nullable();
		$table->tinyInteger('is_phone_verified',1);
		$table->timestamp('email_verified_at')->nullable();
		$table->string('password',100);
		$table->string('remember_token',100)->nullable();
		$table->timestamp('created_at')->nullable();
		$table->timestamp('updated_at')->nullable();
		$table->string('email_verification_token')->nullable();
		$table->string('phone')->nullable();
		$table->string('cm_firebase_token')->nullable();
		$table->string('temporary_token')->nullable();

        });
    }

    public function down()
    {
        Schema::dropIfExists('users');
    }
}