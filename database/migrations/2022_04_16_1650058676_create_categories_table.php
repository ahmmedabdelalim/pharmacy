<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {

		$table->bigInteger('id');
		$table->string('name');
		$table->bigInteger('parent_id');
		$table->integer('position');
		$table->tinyInteger('status')->default('1');
		$table->timestamp('created_at')->nullable();
		$table->timestamp('updated_at')->nullable();
		$table->string('image')->default('def.png');

        });
    }

    public function down()
    {
        Schema::dropIfExists('categories');
    }
}