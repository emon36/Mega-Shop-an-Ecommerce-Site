<?php

namespace App\Http\Controllers\Admin\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Brand;
use Str;
use File;

class BrandController extends Controller
{
    
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function brand(){
        $brand = brand::all();

        return view('admin.category.brand', compact('brand'));
    }


    public function storeBrand(Request $request){
        $validateData = $request->validate([
            'brand_name' => 'required|unique:brands|max:255',

             ]);

 $brand = new Brand();
 $brand->brand_name = $request->brand_name;

 $image = $request->file('brand_logo');

 if($image){

    $ext = strtolower($image->getClientOriginalExtension());
    $image_name = time(). '.'.$ext;
    $path = 'media/brand/';
    $url = $path.$image_name;
    $success = $image->move($path,$image_name);
    $brand->brand_logo = $url;

 }
 
 $brand->save();
         $notification=array(
            'messege'=>'brand Added Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);
    }

    public function deleteBrand($id){

        $brand = Brand::find($id);

        $image = $brand->brand_logo;

        @unlink($image);

        $brand = Brand::where('id',$id)->delete();

        $notification=array(
          'messege'=>'Brand Deleted Successfully',
          'alert-type'=>'success'
           );
         return Redirect()->back()->with($notification);
  



    }
    public function editBrand($id){

      $brand = Brand::find($id);
 
         return view('admin.category.edit_brand', compact('brand'));
 
     }

      public function updateBrand(Request $request, $id)
     {
        $validateData = $request->validate([
            'brand_name' => 'required|max:255|unique:brands,brand_name,'.$id,

             ]);

 $brand = Brand::find($id);

$oldlogo = $request->old_logo;

 $brand->brand_name = $request->brand_name;

 $image = $request->file('brand_logo');

 if($image){
     @unlink($oldlogo);
    $ext = strtolower($image->getClientOriginalExtension());
    $image_name = time(). '.'.$ext;
    $path = 'media/brand/';
    $url = $path.$image_name;
    $success = $image->move($path,$image_name);
    $brand->brand_logo = $url;

 }
    $brand->update();
         $notification=array(
            'messege'=>'brand Added Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);

         
     }


}
