@extends('layouts.app')
@section('content')  


@php
$setting = DB::table('settings')->first();
$charge = $setting->shipping_charge; 
$vat = $setting->vat; 
@endphp
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/cart_responsive.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_styles.css') }} ">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_responsive.css') }}">

<div class="cart_section">
    <div class="container">
        <div class="row">
            <div class="col-lg-8" style="border: 1px solid grey; padding: 20px; border-radius: 25px; "> 
                <div class="contact_form_container">
                    <div class="contact_form_title text-center">Shipping Address</div>

     <form action="{{route('payment.process')}}" id="contact_form" method="post">
         @csrf
                        
      <div class="form-group">
<label for="exampleInputEmail1">Full Name</label>
<input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Your Full Name " name="name" required="">
     </div>


     <div class="form-group">
<label for="exampleInputEmail1">Phone</label>
<input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Your Phone " name="phone" required="">
     </div>


     <div class="form-group">
<label for="exampleInputEmail1">Email</label>
<input type="email" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Your Email " name="email" required="">
     </div>


     <div class="form-group">
<label for="exampleInputEmail1">Address</label>
<input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Your Address" name="address" required="">
     </div>



     <div class="form-group">
<label for="exampleInputEmail1">City</label>
<input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Your City" name="city" required="">
     </div>

<div class="contact_form_title text-center"> Payment By </div>
<div class="form-group">
    <ul class="logos_list">
        <li><input type="radio" name="payment" value="stripe"><img src="{{ asset('frontend/images/mastercard.png') }}" style="width: 100px; height: 60px;"> </li>
{{-- 
         <li><input type="radio" name="payment" value="paypal"><img src="{{ asset('frontend/images/paypal.png') }}" style="width: 100px; height: 60px;"> </li>

          <li><input type="radio" name="payment" value="oncash"><img src="{{ asset('frontend/images/delivery.png') }}" style="width: 100px; height: 60px;"> </li> --}}
        
    </ul>
    
</div>


                        <div class="contact_form_button text-center">
    <button type="submit" class="btn btn-info">Pay Now</button>
                        </div>
                    </form>

                </div>
            </div>

            <div class="col-md-4 mt-3">

                <h3 style="text-align: right;"> Billing Information </h3>

                <ul class="list-group mt-5" >

                    @if(Session::has('coupon_name'))
                    <li class="list-group-item">Subtotal : <span>{{ Session::get('coupon_name')['balance'] }}  </span> </li>
                   
                     <li class="list-group-item">Coupon : 
                        <a href="{{ route('coupon.remove') }}" class="btn btn-danger btn-sm">X</a>
                   
                   <span>{{ Session::get('coupon_name')['name'] }} </span> </li>
                   @else
                   
                    <li class="list-group-item">Subtotal : <span >
                    ${{  Cart::Subtotal() }} </span> </li>

                    @endif
      
                    <li class="list-group-item">Shiping Charge : <span>${{ $charge  }} </span> </li>
                    <li class="list-group-item">Vat : <span > {{ $vat }}</span> </li>
                    @if(Session::has('coupon_name'))
                    <li class="list-group-item">Total : <span > {{ Session::get('coupon_name')['balance'] + $charge + $vat }}</span> </li>
                   @else
                  <li class="list-group-item">Total : <span>{{ Cart::Subtotal() + $charge + $vat }} </span> </li>
                  @endif
                   
                
                    
                </ul>

                <div class="order_total_content" style="padding: 15px;">
                    @if(Session::has('coupon_name'))

                    @else
           
                    <h5 style="margin-left: 20px;"> Apply Coupon </h5>
                        <form method="post" action=" {{route('apply.coupon')}} ">
                            @csrf
                            <div class="form group">
                                <input type="text" name="coupon" class="form-control" required="" placeholder="Enter Your Coupon"> 
                            </div><br>
                   <button type="submit" class="btn btn-danger ml-2">Submit      	
                   </button> 		
                        </form>
                      
                        @endif
                    </div>


                

            </div>

            





        </div>

        <div class="row">
<div class="col-lg-8">
    <div class="cart_container">
        <div class="cart_title">Shopping Cart</div>
        <div class="cart_items">
            <ul class="cart_list">

                
              
              @foreach($cart as $row)

<li class="cart_item clearfix">
<div class="cart_item_image text-center"><br><img src="{{ asset($row->options->image) }} " style="width: 70px; width: 70px;" alt=""></div>
<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
<div class="cart_item_name cart_info_col">
    <div class="cart_item_title"> Product Name</div>
    <div class="cart_item_text">{{ $row->name  }}</div>
</div>

@if($row->options->color == NULL)

@else
<div class="cart_item_color cart_info_col">
    <div class="cart_item_title">Color</div>
    <div class="cart_item_text"> {{ $row->options->color }}</div>
</div>
 @endif


@if($row->options->size == NULL)

@else
<div class="cart_item_color cart_info_col">
    <div class="cart_item_title">Size</div>
    <div class="cart_item_text"> {{ $row->options->size }}</div>
</div>
@endif
  

<div class="cart_item_quantity cart_info_col">
    <div class="cart_item_title">Quantity</div><br> 
    <div class="cart_item_text mt-2"> {{ $row->qty }}</div>

</div>







</div>
</li>
                @endforeach
            </ul>
        </div>
        
     

    </div>




</div>
           




        </div>


    </div>
</div>




<script src="{{ asset('frontend/js/cart_custom.js') }}"></script>



@endsection