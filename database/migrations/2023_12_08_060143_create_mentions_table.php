<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('mentions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id'); // user who mentioned
            $table->unsignedBigInteger('post_id')->nullable(); // post being mentioned in
            $table->unsignedBigInteger('comment_id')->nullable(); // comment being mentioned in
            $table->unsignedBigInteger('mentioned_user_id'); // user being mentioned
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('post_id')->references('id')->on('posts');
            $table->foreign('comment_id')->references('id')->on('comments');
            $table->foreign('mentioned_user_id')->references('id')->on('users');
 });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('mentions');
    }
};
