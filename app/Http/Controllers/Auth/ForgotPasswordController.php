<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Http\Request; 
use DB; 
use Carbon\Carbon; 
use App\Models\User; 
use Illuminate\Support\Facades\Mail;
use Hash;
use Illuminate\Support\Facades\Log;
use Swift_TransportException;
use Illuminate\Support\Str;

class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    use SendsPasswordResetEmails;

     public function showForgetPasswordForm()
      {
         return view('auth.forgetPassword');
      }
      public function submitForgetPasswordForm(Request $request)
      {
          $request->validate([
              'email' => 'required|email|exists:users',
          ]);
  
          $token = Str::random(64);
            DB::beginTransaction();

        try {
            DB::table('password_reset_tokens')->insert([
                'email' => $request->email,
                'token' => $token,
                'created_at' => Carbon::now(),
            ]);

            Mail::send('email.forgetPassword', ['token' => $token], function ($message) use ($request) {
                $message->to($request->email);
                $message->subject('Reset Password');
            });
            // $response = Mail::send('email.forgetPassword', ['token' => $token], function ($message) use ($request) {
            //     $message->to($request->email);
            //     $message->subject('Reset Password');
            // });

            // if ($response) {
            //     // Email sent successfully
            //     return back()->with('message', '111111We have e-mailed your password reset link!');
            // } else {
            //     // Email sending failed
            //     return back()->withInput()->with('error', 'Failed to send email. Please try again.');
            // }

            DB::commit();

            return back()->with('message', '11We have e-mailed your password reset link!');
        } catch (\Exception $e) {
               Log::error('Email sending error: ' . $e->getMessage());
            DB::rollBack();
            return back()->withInput()->with('error', 'Something went wrong. Please try again.');
        }

         
  
         
      }

//      public function submitForgetPasswordForm(Request $request)
// {
//     $request->validate([
//         'email' => 'required|email|exists:users',
//     ]);

//     $token = Str::random(64);

//     DB::beginTransaction();

//     try {
//         DB::table('password_reset_tokens')->insert([
//             'email' => $request->email,
//             'token' => $token,
//             'created_at' => Carbon::now(),
//         ]);

//         // Use Mail::fake() during testing or in the local environment
//         if (app()->environment('local')) {
//             Mail::fake();
//         }

//         // Send the email
//         Mail::send('email.forgetPassword', ['token' => $token], function ($message) use ($request) {
//             $message->to($request->email);
//             $message->subject('Reset Password');
//         });

//         // Commit the database transaction
//         DB::commit();

//         // Email sent successfully
//         return back()->with('message', 'We have e-mailed your password reset link!');
//     } catch (\Exception $e) {
//         // Log the error
//         Log::error('Email sending error111: ' . $e->getMessage());

//         // Rollback the database transaction
//         DB::rollBack();
//  // Check if it's a Swift_TransportException (email sending failure)
//         if ($e instanceof \Swift_TransportException) {
//             // Handle the email sending failure
//             return back()->withInput()->with('error', '11Failed to send email. Please try again.');
//         }
//         // Handle the error and redirect back with an error message
//         return back()->withInput()->with('error', 'Failed to send email. Please try again.');
//     }
// }

       public function showResetPasswordForm($token) { 
         return view('auth.forgetPasswordLink', ['token' => $token]);
      }
      public function submitResetPasswordForm(Request $request)
      {
          $request->validate([
              'email' => 'required|email|exists:users',
              'password' => 'required|string|min:6|confirmed',
              'password_confirmation' => 'required'
          ]);
  
          $updatePassword = DB::table('password_reset_tokens')
                              ->where([
                                'email' => $request->email, 
                                'token' => $request->token
                              ])
                              ->first();
  
          if(!$updatePassword){
              return back()->withInput()->with('error', 'Invalid token!');
          }
  
          $user = User::where('email', $request->email)
                      ->update(['password' => Hash::make($request->password)]);
 
          DB::table('password_reset_tokens')->where(['email'=> $request->email])->delete();
  
          return redirect('/login')->with('message', 'Your password has been changed!');
      }
}