<?php

namespace App\Http\Controllers\Admin\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Category;
use DB;

class CategoryController extends Controller

{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function category(){
        $category = Category::all();

        return view('admin.category.index', compact('category'));
    }

    public function storeCategory(Request $request){
        $validateData = $request->validate([
            'category_name' => 'required|unique:categories|max:255',
             ]);

 $category = new Category();
 $category->category_name = $request->category_name;
 $category->save();
         $notification=array(
            'messege'=>'Category Added Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);
    }

    public function deleteCategory($id){

        $category = Category::where('id',$id)->delete();

      $notification=array(
        'messege'=>'Category Deleted Successfully',
        'alert-type'=>'success'
         );
       return Redirect()->back()->with($notification);


    }

    public function editCategory($id){

       $category = DB::table('categories')->where('id',$id)->first();

        return view('admin.category.edit_category', compact('category'));

    }

    public function updateCategory(Request $request ,$id)
    {

        $validateData = $request->validate([
            'category_name' => 'required|unique:categories|max:255',
             ]);

    $category = Category::find($id);
     $category->category_name = $request->category_name;
     $category->update();
         $notification=array(
            'messege'=>'Category Added Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->route('categories')->with($notification);
    }
    

    
            
    
}
