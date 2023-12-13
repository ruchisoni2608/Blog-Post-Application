<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Auth\ForgotPasswordController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\NotificationsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Route::get('admin/home', [HomeController::class, 'adminHome'])->name('admin.home')->middleware('is_admin');
Route::get('superadmin/home', [HomeController::class, 'superadminHome'])->name('superadmin.home')->middleware('is_admin');
  

// Show user profile
Route::get('/profile', [ProfileController::class, 'show'])->name('profile.show');
// Edit user profile
Route::get('/profile/edit', [ProfileController::class, 'edit'])->name('profile.edit');
Route::put('/profile/update', [ProfileController::class, 'update'])->name('profile.update');

//post 
   Route::resource('posts', PostController::class);
   Route::get('/personalpost', [PostController::class, 'personalpost'])->name('posts.personalpost');

// web.php
Route::post('/posts/{postId}/add-comment', [PostController::class,'addComment'])->name('posts.addComment');

Route::post('comments', [CommentController::class,'store'])->name('comments.store');

Route::get('/notifications', [NotificationsController::class,'index'])->name('notifications.index');

// Comment editing
Route::get('/comments/{comment}/edit', [CommentController::class,'edit'])->name('comments.edit');
Route::put('/comments/{comment}', [CommentController::class,'update'])->name('comments.update');

// Comment deletion
Route::delete('/comments/{comment}', [CommentController::class,'destroy'])->name('comments.destroy');



// forgot/reset password

Route::get('forget-password', [ForgotPasswordController::class, 'showForgetPasswordForm'])->name('forget.password.get');
Route::post('forget-password', [ForgotPasswordController::class, 'submitForgetPasswordForm'])->name('forget.password.post'); 
Route::get('reset-password/{token}', [ForgotPasswordController::class, 'showResetPasswordForm'])->name('reset.password.get');
Route::post('reset-password', [ForgotPasswordController::class, 'submitResetPasswordForm'])->name('reset.password.post');

Route::group(['middleware' => 'auth'], function () {
    // User routes


    Route::group(['middleware' => 'isAdmin:1'], function () {
        // Admin routes

        Route::get('/users', [App\Http\Controllers\HomeController::class, 'users'])->name('users');
        Route::get('admin/home', [HomeController::class, 'adminHome'])->name('admin.home');
    });

    Route::group(['middleware' => 'isAdmin:2'], function () {
        // Superadmin routes
    });
});