@extends('layouts.app')
@section('content') 


<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/cart_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/cart_responsive.css') }}">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

	<!-- Cart -->
	@if(count($wishlist) != NULL)
	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="cart_container">
						<div class="cart_title">Wishlist Products</div>
						<div class="cart_items">
							<ul class="cart_list">

								
                              
                              @foreach($wishlist as $row)

		<li class="cart_item clearfix">
			<div class="cart_item_image text-center"><br><img src="{{ asset($row->image_one) }} " style="width: 70px; width: 70px;" alt=""></div>
			<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
				<div class="cart_item_name cart_info_col">
					<div class="cart_item_title">Name</div>
					<div class="cart_item_text">{{ $row->product_name  }}</div>
				</div>

				@if($row->product_color == NULL)

                @else
				<div class="cart_item_color cart_info_col">
					<div class="cart_item_title"> Available Color</div>
					<div class="cart_item_text"> {{ $row->product_color }}</div>
				</div>
				 @endif
 

                @if($row->product_size == NULL)

                @else
                <div class="cart_item_color cart_info_col">
					<div class="cart_item_title"> Available Size</div>
					<div class="cart_item_text"> {{ $row->product_size }}</div>
				</div>
                @endif
                  

				<div class="cart_item_price cart_info_col">
					<div class="cart_item_title">Price</div>
					<div class="cart_item_text">${{ $row->selling_price }}</div>
				</div>

                <div class="cart_item_total cart_info_col mt-2">
					<div class="cart_item_title ">Action</div><br>
                 <a href="{{ route('view-products' , ['id' => $row->id, 'name' => $row->product_name] )}}"><i class="far fa-cart-plus fa-lg"></i></a>
          <a href=" {{route('remove.wishlist',$row->wishlistId)}}" class="btn btn-sm btn-danger ml-2"> X</a> 


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

 @else

 <div class="cart_section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="cart_container">
					<div class="cart_title">Product Wishlist</div>
					<div class="cart_items">

	<div>

		<p> You have no items in your Wishlist </p>
		<p>Click <a href="">here</a> to continue browsing.</p>
	</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 </div>
 

	@endif







<script src="{{ asset('frontend/js/cart_custom.js') }}"></script>







@endsection