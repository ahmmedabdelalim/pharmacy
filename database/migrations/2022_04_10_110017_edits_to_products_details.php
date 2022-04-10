<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class EditsToProductsDetails extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('products', function (Blueprint $table) {
            $table->string('composition')->nullable();
            $table->text('indication')->nullable();
            $table->string('dosage')->nullable();
            $table->text('warnings')->nullable();
            $table->dropColumn('variations');
            $table->dropColumn('tax');
            $table->dropColumn('choice_options');
            $table->dropColumn('tax_type');
            $table->dropColumn('unit');
            $table->dropColumn('total_stock');
            $table->dropColumn('capacity');
            $table->dropColumn('daily_needs');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('products', function (Blueprint $table) {
            //
        });
    }
}
