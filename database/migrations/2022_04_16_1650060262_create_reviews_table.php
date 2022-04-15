<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateReviewsTable extends Migration
{
    public function up()
    {
        Schema::create('reviews', function (Blueprint $table) {

		$table->bigInteger('id')->unsigned();
		$table->integer('product_id');
		$table->integer('user_id');
		$table->text('comment')->nullable();
		$table->string('attachment')->nullable();
		$table->integer('rating');
		$table->timestamp('created_at')->nullable();
		$table->timestamp('updated_at')->nullable();
		$table->integer('order_id')->nullable();

        });
    }

    public function down()
    {
        Schema::dropIfExists('reviews');
    }
}