<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePharmacyProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pharmacy_product', function (Blueprint $table) {
            $table->id();
            $table->integer('pharmacy_id');
            $table->string('name');
            $table->string('description');
            $table->string('image');
            $table->double('price');
            $table->tinyInteger('status');
            $table->integer('category_id');
            $table->string('composition');
            $table->text('indication');
            $table->string('dosage');
            $table->text('warnings');
            $table->integer('stock');
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
        Schema::dropIfExists('pharmacy_product');
    }
}
