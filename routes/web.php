<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('pages.index');
});

Auth::routes(['verify' => true]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/user/logout', [App\Http\Controllers\HomeController::class, 'Logout'])->name('user.logout');
Route::get('/password/change',  [App\Http\Controllers\HomeController::class,'changePassword'])->name('password.change');
Route::post('/password/update',  [App\Http\Controllers\HomeController::class,'updatePassword'])->name('pass.update'); 
Route::post('/update/{user}/profile',  [App\Http\Controllers\HomeController::class,'updateInfo'])->name('update.profile'); 

Route::post('/store/newsletter', [App\Http\Controllers\NewsletterController::class, 'storeEmail'])->name('store.newsletter');
Route::get('/add/wishlist/{id}', [App\Http\Controllers\WishlistController::class, 'addWishList'])->name('add.wishlist');
Route::get('/user/wishlists/',[App\Http\Controllers\WishlistController::class, 'viewlist'])->name('user.wishlist');
Route::get('/remove/wishlist/{id}',[App\Http\Controllers\WishlistController::class, 'removelist'])->name('remove.wishlist');
Route::get('/shop', [App\Http\Controllers\ProductController::class, 'shopview'])->name('product.shop');

Route::get('subcategory/{id}', [App\Http\Controllers\ProductController::class, 'subproductsview']);
Route::get('category/products/{id}', [App\Http\Controllers\ProductController::class, 'categoryProductsView']);

Route::get('product/details/{id}/{name}', [App\Http\Controllers\ProductController::class, 'productView'])->name('view-products');
//single product cart
Route::post('/cart/product/add//{id}', [App\Http\Controllers\ProductController::class, 'addCart'])->name('product.add.cart');
//cart 
Route::get('/add/to/cart/{id}', [App\Http\Controllers\CartController::class, 'addToCart'])->name('add.cart');
Route::get('/show/cart', [App\Http\Controllers\CartController::class, 'showCart'])->name('show.cart');
Route::get('/remove/cart/{rowid}', [App\Http\Controllers\CartController::class, 'removeCart']);
Route::post('/update/cart', [App\Http\Controllers\CartController::class, 'updateCart'])->name('update.cart.item');
Route::get('/cart/product/view/{id}', [App\Http\Controllers\CartController::class, 'ViewProduct']);
Route::post('/insert/into/cart/', [App\Http\Controllers\CartController::class, 'insertCart'])->name('insert.into.cart');

//checkout
Route::get('/user/checkout', [App\Http\Controllers\CheckoutController::class, 'checkout'])->name('user.checkout');
Route::post('/apply/coupon', [App\Http\Controllers\CheckoutController::class, 'applyCoupon'])->name('apply.coupon');
Route::get('/remove/coupon', [App\Http\Controllers\CheckoutController::class, 'removeCoupon'])->name('coupon.remove');

//payment
Route::post('/payment/process', [App\Http\Controllers\PaymentController::class, 'payment'])->name('payment.process');

Route::post('/stripe/charge', [App\Http\Controllers\PaymentController::class, 'stripeCharge'])->name('stripe.charge');



Route::get('/check', [App\Http\Controllers\CartController::class, 'check']);
Route::post('/check/order/status', [App\Http\Controllers\FormController::class, 'OrderTracking'])->name('order.tracking');

Route::post('/product/search', [App\Http\Controllers\FormController::class, 'Search'])->name('product.search');



Route::get('/get/subcategory/{category_id}',[App\Http\Controllers\Admin\ProductController::class, 'getSubCategory']);
   


Route::prefix('admin')->group(function() {
    Route::get('/login', [App\Http\Controllers\Admin\Auth\LoginController::class, 'showLoginForm'])->name('admin.login');
    Route::post('/login', [App\Http\Controllers\Admin\Auth\LoginController::class ,'login'])->name('admin.login.submit');
    Route::get('logout/', [App\Http\Controllers\Admin\Auth\LoginController::class ,'logout'])->name('admin.logout');
    Route::get('/', [App\Http\Controllers\AdminController::class ,'index'])->name('admin.dashboard');





    //category

    Route::get('/categories', [App\Http\Controllers\Admin\Category\CategoryController::class, 'category'])->name('categories');

    Route::post('/store/category', [App\Http\Controllers\Admin\Category\CategoryController::class, 'storeCategory'])->name('store.category');
    Route::get('/categories', [App\Http\Controllers\Admin\Category\CategoryController::class, 'category'])->name('categories');
    Route::get('/delete/category/{id}', [App\Http\Controllers\Admin\Category\CategoryController::class, 'deleteCategory']);
    Route::get('/edit/category/{id}', [App\Http\Controllers\Admin\Category\CategoryController::class, 'editCategory'])->name('edit.category');
    Route::post('/update/category/{id}', [App\Http\Controllers\Admin\Category\CategoryController::class, 'updateCategory'])->name('update.category');


    //brand

    Route::get('/brands', [App\Http\Controllers\Admin\Category\BrandController::class, 'brand'])->name('brands');
    Route::post('/store/brand', [App\Http\Controllers\Admin\Category\BrandController::class, 'storeBrand'])->name('store.brand');
    Route::get('/delete/brand/{id}', [App\Http\Controllers\Admin\Category\BrandController::class, 'deleteBrand'])->name('delete.brand');
    Route::get('/edit/brand/{id}', [App\Http\Controllers\Admin\Category\BrandController::class, 'editBrand'])->name('edit.brand');
    Route::post('/update/brand/{id}', [App\Http\Controllers\Admin\Category\BrandController::class, 'updateBrand'])->name('update.brand');
   //sub_category
   Route::get('/sub-categories', [App\Http\Controllers\Admin\Category\SubCategoryController::class, 'SubCategory'])->name('subcategories');

   Route::post('/store/sub-category', [App\Http\Controllers\Admin\Category\SubCategoryController::class, 'storeSubCategory'])->name('store.subcategory');

   Route::get('/delete/sub-category/{id}', [App\Http\Controllers\Admin\Category\SubCategoryController::class, 'deleteSubCategory'])->name('delete.subcategory');

   Route::get('/edit/sub-category/{id}', [App\Http\Controllers\Admin\Category\SubCategoryController::class, 'editSubCategory'])->name('edit.subcategory');

   Route::post('/update/sub-category/{id}', [App\Http\Controllers\Admin\Category\SubCategoryController::class, 'updateSubCategory'])->name('update.subcategory');
//coupon

   
Route::get('/coupons', [App\Http\Controllers\Admin\CouponController::class, 'index'])->name('coupons');
Route::post('/store/coupon', [App\Http\Controllers\Admin\CouponController::class, 'storeCoupon'])->name('store.coupon');
Route::get('/delete/coupon/{id}', [App\Http\Controllers\Admin\CouponController::class, 'deleteCoupon'])->name('delete.coupon');
Route::get('/edit/coupon/{id}', [App\Http\Controllers\Admin\CouponController::class, 'editCoupon'])->name('edit.coupon');
Route::post('/update/coupon/{id}', [App\Http\Controllers\Admin\CouponController::class, 'updateCoupon'])->name('update.coupon');

//newsletter

  Route::get('/newsletter', [App\Http\Controllers\Admin\CouponController::class, 'newsletter'])->name('newsletter');
  Route::get('/delete/newsletter/{id}', [App\Http\Controllers\Admin\CouponController::class, 'deleteNewsletter'])->name('delete.newsletter');


  //product


  Route::get('/products', [App\Http\Controllers\Admin\ProductController::class, 'index'])->name('products');

  Route::get('/create/product', [App\Http\Controllers\Admin\ProductController::class, 'create'])->name('create.product');
  Route::post('/store/product', [App\Http\Controllers\Admin\ProductController::class, 'store'])->name('store.product');
  Route::get('/inactive/product/{id}', [App\Http\Controllers\Admin\ProductController::class, 'inactive'])->name('inactive');
  Route::get('/active/product/{id}', [App\Http\Controllers\Admin\ProductController::class, 'active'])->name('active');
  Route::get('delete/product/{id}', [App\Http\Controllers\Admin\ProductController::class,'DeleteProduct'])->name('delete.product');

  Route::get('view/product/{id}',  [App\Http\Controllers\Admin\ProductController::class, 'ViewProduct'])->name('view.product');
  Route::get('edit/product/{id}',  [App\Http\Controllers\Admin\ProductController::class,'EditProduct'])->name('edit.product');
  
  Route::post('update/product/withoutphoto/{id}',  [App\Http\Controllers\Admin\ProductController::class, 'UpdateProductWithoutPhoto'])->name('update.without.image');
  
  Route::post('update/product/photo/{id}',   [App\Http\Controllers\Admin\ProductController::class,'UpdateProductPhoto'])->name('update.with.image');


  //order

  Route::get('/pending/orders', [App\Http\Controllers\Admin\OrderController::class, 'pendingOrders'])->name('pending.orders');
  Route::get('/view/order/{id}', [App\Http\Controllers\Admin\OrderController::class, 'viewOrder'])->name('view.order');

  Route::get('/payment/accept/{id}',[App\Http\Controllers\Admin\OrderController::class, 'PaymentAccept'])->name('payment.accept');
Route::get('/payment/cancel/{id}', [App\Http\Controllers\Admin\OrderController::class,'PaymentCancel'])->name('order.cancel');

Route::get('/accept/payment', [App\Http\Controllers\Admin\OrderController::class,'AcceptPayment'])->name('accept.payment');

Route::get('/cancel/order', [App\Http\Controllers\Admin\OrderController::class,'CancelOrder'])->name('cancel.order');

Route::get('/process/payment',[App\Http\Controllers\Admin\OrderController::class, 'ProcessPayment'])->name('process.payment');
Route::get('success/payment',[App\Http\Controllers\Admin\OrderController::class, 'SuccessPayment'])->name('success.payment');

Route::get('delevery/process/{id}',[App\Http\Controllers\Admin\OrderController::class, 'DeleveryProcess']);
Route::get('delevery/done/{id}', [App\Http\Controllers\Admin\OrderController::class,'DeleveryDone']);

//reports

Route::get('/todays/order',[App\Http\Controllers\Admin\ReportController::class, 'todaysOrder'])->name('todays.order');

Route::get('/todays/delivery',[App\Http\Controllers\Admin\ReportController::class, 'todaysDelivery'])->name('todays.delivery');
//stock

Route::get('/stock', [App\Http\Controllers\Admin\StockController::class, 'index'])->name('product.stock');

   });

