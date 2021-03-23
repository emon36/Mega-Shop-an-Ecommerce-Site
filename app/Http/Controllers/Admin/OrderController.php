<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use DB;

class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function pendingOrders(){

        $orders = DB::table('orders')->where('status',0)->get();

       return view('admin.order.pending',compact('orders'));
    }


    public function viewOrder($id){

        $order = DB::table('orders')
               ->join('users','orders.user_id', 'users.id')
               ->select('orders.*','users.name','users.phone')
               ->where('orders.id',$id)
               ->first();

               

      $shipping = DB::table('shipping')->where('order_id',$id)->first();

      $details = DB::table('orders_details')
                 ->join('products','orders_details.product_id','products.id')
                 ->select('orders_details.*', 'products.product_code', 'products.image_one')
                 ->where('orders_details.order_id',$id)
                 ->get();


                 return view('admin.order.order_details',compact('order','shipping','details'));


    }


                 public function PaymentAccept($id){
                    DB::table('orders')->where('id',$id)->update(['status'=>1]);
                    $notification=array(
                            'messege'=>'Payment Accept Done',
                            'alert-type'=>'success'
                             );
                           return Redirect()->route('pending.orders')->with($notification); 
                    } 
                
                
                  public function PaymentCancel($id){
                      DB::table('orders')->where('id',$id)->update(['status'=>4]);
                    $notification=array(
                            'messege'=>'Order Cancel',
                            'alert-type'=>'success'
                             );
                           return Redirect()->route('pending.orders')->with($notification); 
                  }
                 
                
                
                  public function AcceptPayment(){
                  $orders = DB::table('orders')->where('status',1)->get();
                  // dd($order);
                  return view('admin.order.pending',compact('orders')); 
                  }
                
                
                  public function CancelOrder(){
                  $orders = DB::table('orders')->where('status',4)->get();
                  // dd($order);
                  return view('admin.order.pending',compact('orders')); 
                  }
                
                
                    public function ProcessPayment(){
                  $orders = DB::table('orders')->where('status',2)->get();
                  // dd($order);
                  return view('admin.order.pending',compact('orders')); 
                  }
                
                
                
                  public function SuccessPayment(){
                  $orders = DB::table('orders')->where('status',3)->get();
                  // dd($order);
                  return view('admin.order.pending',compact('orders')); 
                  }
                
                
                
                public function DeleveryProcess($id){
                    DB::table('orders')->where('id',$id)->update(['status'=>2]);
                    $notification=array(
                            'messege'=>'Send To Delivery',
                            'alert-type'=>'success'
                             );
                           return Redirect()->route('accept.payment')->with($notification); 
                    } 
                
                
                
                
                    public function DeleveryDone($id){
                
                  $product = DB::table('orders_details')->where('order_id',$id)->get();
                  foreach ($product as $row) {
                   DB::table('products')
                          ->where('id',$row->product_id)
                          ->update(['product_quantity' => DB::raw('product_quantity-'.$row->quantity)]);
                  }
                 
                    DB::table('orders')->where('id',$id)->update(['status'=>3]);
                    $notification=array(
                            'messege'=>'Product Delivery Done',
                            'alert-type'=>'success'
                             );
                           return Redirect()->route('success.payment')->with($notification); 
                    } 
                

    
}
