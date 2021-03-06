<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Cart;
use Response;
use Auth;
use Session;

class CartController extends Controller
{
    public function addToCart($id){

        if(Session::has('coupon_name'))
        {
            Session::forget('coupon_name');
        }

        $product = DB::table('products')->where('id',$id)->first();

        $data = array();

        if ($product->discount_price == NULL) {
            $data['id'] = $product->id;
            $data['name'] = $product->product_name;
            $data['qty'] = 1;
            $data['price'] = $product->selling_price;
            $data['weight'] = 1;
            $data['options']['image'] = $product->image_one;
            $data['options']['color'] = '';
            $data['options']['size'] = '';
             Cart::add($data);
             return \Response::json(['success' => 'Successfully Added on your Cart']);
        }else{
       
            $data['id'] = $product->id;
            $data['name'] = $product->product_name;
            $data['qty'] = 1;
            $data['price'] = $product->discount_price;
            $data['weight'] = 1;
            $data['options']['image'] = $product->image_one;
            $data['options']['color'] = '';
            $data['options']['size'] = '';
             Cart::add($data);
             return \Response::json(['success' => 'Successfully Added on your Cart']);
       
        } 
    }

        public function showCart(){

            


            $cart = Cart::content();

            return view('pages.cart',compact('cart'));

        }
       

    public function check(){

        $content = Cart::content();

        return response()->json($content);
    }

    public function removeCart($rowId){

        if(Session::has('coupon_name'))
        {
            Session::forget('coupon_name');
        }
    	Cart::remove($rowId);
    	$notification=array(
                        'messege'=>'Product Remove form Cart',
                        'alert-type'=>'success'
                         );
                       return Redirect()->back()->with($notification);

    }

    public function updateCart( Request $request ){

        if(Session::has('coupon_name'))
        {
            Session::forget('coupon_name');
        }

        $rowId = $request->productid;
    	$qty = $request->qty;
    	Cart::update($rowId,$qty);
    	$notification=array(
                        'messege'=>'Product Quantity Updated',
                        'alert-type'=>'success'
                         );
                       return Redirect()->back()->with($notification);


    }


    public function ViewProduct($id){
    	$product = DB::table('products')
    			->join('categories','products.category_id','categories.id')
    			->join('sub_categories','products.subcategory_id','sub_categories.id')
    			->join('brands','products.brand_id','brands.id')
    			->select('products.*','categories.category_name','sub_categories.subcategory_name','brands.brand_name')
    			->where('products.id',$id)
    			->first();

    	$color = $product->product_color;
    	$product_color = explode(',', $color);
    	
    	$size = $product->product_size;
    	$product_size = explode(',', $size);	

   return response::json(array(
    'product' => $product,
    'color' => $product_color,
    'size' => $product_size,
   ));


    }


    public function insertCart(Request $request){

        if(Session::has('coupon_name'))
        {
            Session::forget('coupon_name');
        }
        
        $id = $request->product_id;
     $product = DB::table('products')->where('id',$id)->first();
     $color = $request->color;
     $size = $request->size;
     $qty = $request->qty;
 
   $data = array();
  
  if ($product->discount_price == NULL) {
      $data['id'] = $product->id;
      $data['name'] = $product->product_name;
      $data['qty'] = $request->qty;
      $data['price'] = $product->selling_price;
      $data['weight'] = 1;
      $data['options']['image'] = $product->image_one;
      $data['options']['color'] = $request->color;
      $data['options']['size'] = $request->size;
       Cart::add($data);
       $notification=array(
                         'messege'=>'Product Added Successfully',
                         'alert-type'=>'success'
                          );
                        return Redirect()->back()->with($notification);
  }else{
 
      $data['id'] = $product->id;
      $data['name'] = $product->product_name;
      $data['qty'] = $request->qty;
      $data['price'] = $product->discount_price;
      $data['weight'] = 1;
      $data['options']['image'] = $product->image_one;
      $data['options']['color'] = $request->color;
      $data['options']['size'] = $request->size;
       Cart::add($data);
       $notification=array(
                         'messege'=>'Product Added Successfully',
                         'alert-type'=>'success'
                          );
                        return Redirect()->back()->with($notification);
 
  } 
 
    } 



}
