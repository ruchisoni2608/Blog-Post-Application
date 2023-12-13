<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NotificationsController extends Controller
{
     public function index()
    {
        // Mark notifications as read
        Auth::user()->unreadNotifications->markAsRead();

        // Display notifications view
        return view('notifications.index');
    }
}