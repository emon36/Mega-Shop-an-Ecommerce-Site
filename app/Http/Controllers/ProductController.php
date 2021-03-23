<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Cart;
use Session;
class ProductController extends Controller
{
    public function productView($id ,$name){

       $product = DB::table('products')
                  ->join('categories','products.category_id','categories.id')
                  ->join('sub_categories','products.subcategory_id','sub_categories.id')
                  ->join('brands','products.brand_id','brands.id')
                  ->select('products.*','categories.category_name','sub_categories.subcategory_name','brands.brand_name')
                  ->where('products.id',$id)
                  ->first();

                  $color = $product->product_color;

                  $product_color = explode(',',$color);


                  $size = $product->product_size;
                  $product_size = explode(',',$size);

        return view('pages.products_details',compact('product','product_color','product_size'));
    }

    public function addCart(Request $request, $id){

        if(Session::has('coupon_name'))
        {
            Session::forget('coupon_name');
        }

        $product = DB::table('products')->where('id',$id)->first();

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
                        'messege'=>'Product Successfully Added',
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
                        'messege'=>'Product Successfully Added',
                        'alert-type'=>'success'
                         );
                       return Redirect()->back()->with($notification);

    }   


}

public function shopview(){

    $products = DB::table('products')->paginate(20);
    $category = DB::table('categories')->get();
    $brands = DB::table('brands')->get();
    return view('pages.shop',compact('products','category','brands'));
}
public function subproductsview($id){

    $products = DB::table('products')->where('subcategory_id', $id)->paginate(10);

    $categories = DB::table('categories')->get();

    $brands = DB::table('products')->where('subcategory_id', $id)->select('brand_id')->groupBy('brand_id')->get();


    return view('pages.sub_category_shop', compact('products','categories','brands'));
    


}

public function categoryProductsView($id){

    $products = DB::table('products')->where('category_id', $id)->paginate(16);

    $subcategory = DB::table('products')->where('category_id', $id)->select('subcategory_id')->groupBy('subcategory_id')->get();
  
    $brands = DB::table('products')->where('category_id', $id)->select('brand_id')->groupBy('brand_id')->get();


      return view('pages.category_shop', compact('products','subcategory','brands'));





}



}
