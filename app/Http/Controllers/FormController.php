<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class FormController extends Controller
{
    public function OrderTracking(Request $request){

        $code = $request->code;

  $track = DB::table('orders')
         ->join('orders_details','orders.id','orders_details.order_id')
         ->select('orders.*','orders_details.*')
         ->where('status_code',$code)
         ->get();
       
  if ($track) {
    
    // echo "<pre>";
    // print_r($track);
    return view('pages.tracking',compact('track'));

  }else{
    $notification=array(
            'messege'=>'Status Code Invalid',
            'alert-type'=>'error'
             );
           return Redirect()->back()->with($notification);

  }

    }

    public function Search(Request $request){
      $item = $request->search;
      // echo "$item";
    
      $products = DB::table('products')
                ->where('product_name','LIKE',"%$item%")
                ->paginate(20);
    
        return view('pages.search',compact('products'));        
    
    


    }
}
