<?php

namespace App\Http\Controllers\Admin\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\SubCategory;
use App\Models\Admin\Category;

use DB;
class SubCategoryController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }

    public function SubCategory(){
    $category = DB::table('categories')->get();

    $subcategory = DB::table('sub_categories')
                 ->join('categories','sub_categories.category_id', 'categories.id')
                 ->select('sub_categories.*', 'categories.category_name')
                 ->get();

                 return view('admin.category.sub_category',compact('category','subcategory'));


    }

    public function storeSubCategory(Request $request){
        
        $validateData = $request->validate([
            'subcategory_name' => 'required|unique:sub_categories|max:255',
            'category_id' => 'required'
             ]);

  $subcategory = new SubCategory();
   $subcategory->subcategory_name = $request->subcategory_name;
   $subcategory->category_id = $request->category_id;
  $subcategory->save();
         $notification=array(
            'messege'=>'Sub Category Added Successfully',
            'alert-type'=>'success'
             );
           return Redirect()->back()->with($notification);
    }
    public function deleteSubCategory($id){

        $subcategory = SubCategory::where('id',$id)->delete();

      $notification=array(
        'messege'=>' Sub Category Deleted Successfully',
        'alert-type'=>'success'
         );
       return Redirect()->back()->with($notification);


    }

    public function editSubCategory($id){



        $subcategory = SubCategory::find($id);
        $category = Category::all();
         return view('admin.category.edit_subcategory', compact('subcategory','category'));
 
     }
 
     public function updateSubCategory(Request $request ,$id)
     {
 
         $validateData = $request->validate([
             'subcategory_name' => 'required|unique:sub_categories|max:255,subcategory_name,' .$id,
              ]);
 
     $subcategory = SubCategory::find($id);
      $subcategory->subcategory_name = $request->subcategory_name;
      $subcategory->category_id = $request->category_id;
      $subcategory->update();
          $notification=array(
             'messege'=>'Category Added Successfully',
             'alert-type'=>'success'
              );
            return Redirect()->route('subcategories')->with($notification);
     }
     
}
