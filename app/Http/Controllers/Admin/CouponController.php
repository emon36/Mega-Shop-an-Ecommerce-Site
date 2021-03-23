<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Coupon;
use  App\Models\Newsletter;

class CouponController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function index(){
      
       $coupon = Coupon::all();

       return view('admin.coupon.coupon',compact('coupon'));

    }

    public function storeCoupon(Request $request){
        $validateData = $request->validate([
            'coupon_name' => 'required|unique:coupons|max:255',
            'discount' => 'required',
             ]);

 $coupon = new Coupon();
 $coupon->coupon_name = $request->coupon_name;
 $coupon->discount = $request->discount;
 $coupon->save();
         $notification=array(
            'messege'=>'Coupon Added Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);

    }
    public function deleteCoupon($id){

        $coupon = Coupon::where('id',$id)->delete();

      $notification=array(
        'messege'=>'coupon Deleted Successfully',
        'alert-type'=>'success'
         );
       return Redirect()->back()->with($notification);


    }
    public function editCoupon($id){

    $coupon = Coupon::find($id);

    return view('admin.coupon.edit_coupon', compact('coupon'));

}

public function updateCoupon(Request $request ,$id)
{

    $validateData = $request->validate([
        'coupon_name' => 'required|max:255|unique:coupons,coupon_name,'.$id,
        'discount' => 'required'
         ]);

 $coupon = Coupon::find($id);
 $coupon->coupon_name = $request->coupon_name;
 $coupon->discount = $request->discount;
 $coupon->update();
     $notification=array(
        'messege'=>'Coupon Updated Successfully',
        'alert-type'=>'success'
         );
       return Redirect()->route('coupons')->with($notification);
}


public function newsletter(){

  $newsletter = Newsletter::all();

  return view('admin.newsletter.index',compact('newsletter') );
}

public function deleteNewsletter($id){

$newsletter = Newsletter::where('id',$id)->delete();

$notification=array(
  'messege'=>' Subscription Deleted Successfully',
  'alert-type'=>'success'
   );
 return Redirect()->back()->with($notification);


}



}
