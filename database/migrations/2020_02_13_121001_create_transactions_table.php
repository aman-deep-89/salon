<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->bigIncrements('transaction_id');
            $table->date('transaction_date');
            $table->unsignedBigInteger('customer_id')->unsigned()->nullable();
            $table->unsignedBigInteger('employee_id')->unsigned()->nullable();            
            $table->string('material_detail');
            $table->string('service_detail');
            $table->double('total_amount',10,2);
            $table->double('paid',10,2);
            $table->double('balance',10,2);
            $table->timestamps();
            $table->foreign('customer_id')->references('customer_id')->on('customers')->onDelete('cascade');
            $table->foreign('employee_id')->references('employee_id')->on('employees')->onDelete('set null');            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transactions');
    }
}
