<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use DB;

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
    public function index(User $user )
    {

      $user = Auth::user();
        return view('home', compact('user'));
    }

    public function changePassword(){
        return view('auth.changepassword');
    }

    public function updateInfo(User $user){

      $this->validate(request(), [
        'name' => 'required',
        'email' => 'required|email|unique:users,email,'.$user->id,
        'phone' => 'required|unique:users,phone,'.$user->id,
        'address' => 'required'
    ]);

    $user->name = request('name');
    $user->email = request('email');
    $user->phone = request('phone');
    $user->address = request('address');
    $user->save();  
         $notification=array(
            'messege'=>'Upadated Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->route('home')->with($notification);
    


    }

  

    public function updatePassword(Request $request)
    {
      $password=Auth::user()->password;
      $oldpass=$request->oldpass;
      $newpass=$request->password;
      $confirm=$request->password_confirmation;
      if (Hash::check($oldpass,$password)) {
           if ($newpass === $confirm) {
                      $user=User::find(Auth::id());
                      $user->password=Hash::make($request->password);
                      $user->save();
                      Auth::logout();  
                      $notification=array(
                        'messege'=>'Password Changed Successfully ! Now Login with Your New Password',
                        'alert-type'=>'success'
                         );
                       return Redirect()->route('login')->with($notification); 
                 }else{
                     $notification=array(
                        'messege'=>'New password and Confirm Password not matched!',
                        'alert-type'=>'error'
                         );
                       return Redirect()->back()->with($notification);
                 }     
      }else{
        $notification=array(
                'messege'=>'Old Password not matched!',
                'alert-type'=>'error'
                 );
               return Redirect()->back()->with($notification);
      }

    }
    public function Logout()
    {
        // $logout= Auth::logout();
            Auth::logout();
            $notification=array(
                'messege'=>'Successfully Logout',
                'alert-type'=>'success'
                 );
             return Redirect()->route('login')->with($notification);
    }
       

}
