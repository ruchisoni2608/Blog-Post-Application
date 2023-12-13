<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function adminHome()
    {
        return view('adminHome');
    }
    public function superadminHome()
    {
        return view('superadminHome');
    }
     public function users()
    {
        $users=User::orderBy('created_at', 'desc')->get();
  
        return view('admin.users',compact('users'));
    }

    
}