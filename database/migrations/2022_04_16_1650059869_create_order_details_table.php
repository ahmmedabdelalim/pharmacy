<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderDetailsTable extends Migration
{
    public function up()
    {
        Schema::create('order_details', function (Blueprint $table) {

		$table->bigInteger('id',20)->unsigned();
		$table->integer('product_id')->nullable();
		$table->integer('order_id')->nullable();
		$table->decimal('price')->default('0.00');
		$table->text('product_details')->nullable();
		$table->string('variation')->nullable();
		$table->decimal('discount_on_product',8,2)->nullable();
		$table->string('discount_type')->default('amount');
		$table->integer('quantity')->default('1');
		$table->decimal('tax_amount')->default('1.00');
		$table->timestamp('created_at')->nullable();
		$table->timestamp('updated_at')->nullable();
		$table->string('variant')->nullable();
		$table->string('unit')->default('pc');
		$table->tinyInteger('is_stock_decreased')->default('1');
		$table->integer('time_slot_id')->nullable();
		$table->date('delivery_date')->nullable();

        });
    }

    public function down()
    {
        Schema::dropIfExists('order_details');
    }
}