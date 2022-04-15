<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {

		$table->bigInteger('id');
		$table->integer('user_id');
		$table->decimal('order_amount');
		$table->decimal('coupon_discount_amount');
		$table->string('coupon_discount_title');
		$table->string('payment_status') ;
		$table->string('order_status') ;
		$table->decimal('total_tax_amount');
		$table->string('payment_method');
		$table->string('transaction_reference');
		$table->integer('delivery_address_id');
        $table->timestamps();
		$table->tinyInteger('checked');
		$table->integer('delivery_man_id');
		$table->decimal('delivery_charge');
		$table->text('order_note');
		$table->string('coupon_code');
		$table->string('order_type');
		$table->integer('branch_id');
		$table->integer('time_slot_id');
		$table->date('date');
		$table->date('delivery_date');
		$table->string('callback');
		//$table->decimal('extra_discount',8,2);

        });
    }

    public function down()
    {
        Schema::dropIfExists('orders');
    }
}