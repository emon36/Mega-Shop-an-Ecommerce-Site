<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;
use Cart;
use Session;
class CheckoutController extends Controller
{
    public function checkout(){
        
        if(Auth::check()){

            $cart = Cart::content();

            return view('pages.checkout',compact('cart'));
        }else{

            $notification=array(
                'messege'=>'Please Login first',
                'alert-type'=>'error',
                 );
               return Redirect()->route('login')->with($notification);
        }


    }


    public function applyCoupon(Request $request){

        $coupon = $request->coupon;

        $check = DB::table('coupons')->where('coupon_name',$coupon)->first();

        if($check){

        Session::put('coupon_name',[

            'name'  => $check->coupon_name,
            'discount' => $check->discount,
            'balance' => Cart::subtotal()-$check->discount
        ]);

        $notification=array(
            'messege'=>'Succesfully Added Coupon',
            'alert-type'=>'success',
             );
           return Redirect()->back()->with($notification);

           

        }else{
            $notification=array(
                'messege'=>'Invalid Coupon',
                'alert-type'=>'error',
                 );
               return Redirect()->back()->with($notification);
        }

    }

    public function removeCoupon(){
        Session::forget('coupon_name');
 	$notification=array(
                        'messege'=>'Coupon remove Successfully',
                        'alert-type'=>'success'
                         );
                       return Redirect()->back()->with($notification);
    }
}
