<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;

class WishlistController extends Controller
{
    public function addWishList($id){

        $userid = Auth::id();

        $check = DB::table('wishlists')->where('user_id',$userid)->where('product_id',$id)->first();

        $data = array(
            'user_id' => $userid,
            'product_id' => $id,

        );


        if (Auth::Check()){

            if($check){
                return \Response::json(['error' => 'Product Already Has on your wishlist']);	 
            }else{
                DB::table('wishlists')->insert($data);

                
                return \Response::json(['success' => 'Product Added on wishlist']);
            }
        }else{
            return \Response::json(['error' => 'At first logging your account']);      

        }

    }

    public function viewlist(){


        $userid = Auth::id();

        $wishlist = DB::table('wishlists')
                   ->join('products','wishlists.product_id','products.id')
                   ->select('products.*', 'wishlists.user_id','wishlists.id as wishlistId' )
                   ->where('products.status',1)
                   ->where('wishlists.user_id',$userid)
                   ->get();

                return view('pages.wishlist',compact('wishlist'));

    }

    public function removelist($id){

        $wishlist = DB::table('wishlists')->where('id',$id)->delete();

        $notification=array(
            'messege'=>'Remove  Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);


    }
}
