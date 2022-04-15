<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateConversationsTable extends Migration
{
    public function up()
    {
        Schema::create('conversations', function (Blueprint $table) {

		$table->bigInteger('id')->unsigned();
		$table->bigInteger('user_id')->nullable();
		$table->string('message')->nullable();
		$table->string('reply')->nullable();
		$table->timestamp('created_at')->nullable();
		$table->timestamp('updated_at')->nullable();
		$table->tinyInteger('checked',1);
		$table->string('image')->nullable();

        });
    }

    public function down()
    {
        Schema::dropIfExists('conversations');
    }
}