<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBranchesTable extends Migration
{
    public function up()
    {
        Schema::create('branches', function (Blueprint $table) {

		$table->bigInteger('id',20)->unsigned();
		//$table->bigInteger('restaurant_id',20)->nullable()->default('1');
		$table->string('name')->nullable()->default('NULL');
		$table->string('email')->nullable()->default('NULL');
		$table->string('password')->nullable()->default('NULL');
		$table->string('latitude')->nullable()->default('NULL');
		$table->string('longitude')->nullable()->default('NULL');
		$table->text('address')->nullable()->default('NULL');
		$table->tinyInteger('status')->default('1');
		$table->timestamp('created_at')->nullable();
		$table->timestamp('updated_at')->nullable();
		$table->integer('coverage')->default('1');
		$table->string('remember_token')->nullable();

        });
    }

    public function down()
    {
        Schema::dropIfExists('branches');
    }
}