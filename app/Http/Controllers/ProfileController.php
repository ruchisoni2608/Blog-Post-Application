<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class ProfileController extends Controller
{
     public function show()
    {
        $user = Auth::user();
        //dd($user);
        return view('profile.show', compact('user'));
    }

    public function edit()
    {
        $user = Auth::user();
        return view('profile.edit', compact('user'));
    }

    public function update(Request $request)
    {
        //dd($request->all());
        $user = Auth::user();

        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255' ,               
            
        ]);

        // Handle image upload
    if ($request->hasFile('image')) {
        $image = $request->file('image');
        $imageName = time() . '.' . $image->getClientOriginalExtension();
        $uploadPath = public_path('image');

        // Ensure the 'image' directory exists
        if (!file_exists($uploadPath)) {
            mkdir($uploadPath, 0777, true);
        }

        // Move the image to the 'public/image' directory
        $image->move($uploadPath, $imageName);

        // Update the user's image column in the database
        $user->image = 'image/' . $imageName;
    }
   
    $user->update([
        'name' => $request->name,
        'email' => $request->email,
       'lastname'=> $request->lastname,
       'Address'=> $request->Address,
       'City'=> $request->City,
       'zipcode'=> $request->zipcode,
       'bio'=> $request->bio
    ]);

      
        return redirect()->route('profile.show')->with('success', 'Profile updated successfully.');
    }


}