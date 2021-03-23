@extends('layouts.app')
@section('content')   

<link rel="stylesheet" type="text/css" href ="{{asset('frontend/styles/shop_styles.css')}}">
<link rel="stylesheet" type="text/css" href= "{{asset('frontend/styles/shop_responsive.css')}}">

<div class="shop">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">

                <!-- Shop Sidebar -->
                <div class="shop_sidebar">
                    <div class="sidebar_section">
                        <div class="sidebar_title">Categories</div>
                        <ul class="sidebar_categories">
                            @php
                            $categories =  DB::table('categories')->get();
                             @endphp
                            @foreach ($categories as $row)
                            
                            <li><a href="{{ url('category/products/'.$row->id)}}"> {{ $row->category_name}} </a></li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="sidebar_section filter_by_section">
                        <div class="sidebar_title"  >Filter By</div>
                        <div class="sidebar_subtitle">Price</div>
                        <div class="filter_price">
                            <div id="slider-range" class="slider_range"></div>
                            <p>Range: </p>
                            <p><input type="text" id="amount" class="amount" readonly style="border:0; font-weight:bold;"></p>
                        </div>
                    </div>
                    <div class="sidebar_section">
                        <div class="sidebar_subtitle color_subtitle">Color</div>
                        <ul class="colors_list">
                            <li class="color"><a href="#" style="background: #b19c83;"></a></li>
                            <li class="color"><a href="#" style="background: #000000;"></a></li>
                            <li class="color"><a href="#" style="background: #999999;"></a></li>
                            <li class="color"><a href="#" style="background: #0e8ce4;"></a></li>
                            <li class="color"><a href="#" style="background: #df3b3b;"></a></li>
                            <li class="color"><a href="#" style="background: #ffffff; border: solid 1px #e1e1e1;"></a></li>
                        </ul>
                    </div>
                    
                    <div class="sidebar_section">
                        <div class="sidebar_subtitle brands_subtitle">Brands</div>
                        <ul class="brands_list">
                            @php
                           $brands =  DB::table('brands')->get();
                            @endphp
                            @foreach ($brands as $row)
                            <li class="brand"><a href="#"> {{$row->brand_name}} </a></li>
                            @endforeach
                            
                            
                        </ul>
                    </div>
                </div>

            </div>

            <div class="col-lg-9">
                
                <!-- Shop Content -->

                <div class="shop_content">
                    <div class="shop_bar clearfix">
                        <div class="shop_product_count"><span> @php
                            echo count($products);
                        @endphp </span> products found</div>
                        <div class="shop_sorting">
                            <span>Sort by:</span>
                            <ul>
                                <li>
                                     <span class="sorting_text">All<i class="fas fa-chevron-down"></span></i> </a>
                                    <ul>
                                       
                                      <li class="shop_sorting_button"data-isotope-option='{ "sortBy": "price" }'> >price high to low</li> 
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>

                    @if($products == NULL)                    
                    @else

                    <div class="product_grid row">
                        <div class="product_grid_border"></div>

                        <!-- Product Item -->
                       
                        @foreach ($products as $row)
                            
                        <div class="product_item is_new">
                            <div class="product_border"></div>
                            <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="{{ asset($row->image_one)}} " alt=""></div>
                            <div class="product_content">
                                @if($row->discount_price == NULL)
                                <div class="product_price discount">${{ $row->selling_price }}<span> </div>
                                      @else
                                <div class="product_price discount">${{ $row->discount_price }}<span>${{ $row->selling_price }}</span></div>
                                      @endif
                                <div class="product_name"><div> <a href="{{ route('view-products' , ['id' => $row->id, 'name' => $row->product_name] )}}">{{ $row->product_name }}</a></div></div>
                            </div>
                            <div class="product_fav"><i class="fas fa-heart"></i></div>
                            <ul class="product_marks">
                                @if ($row->discount_price == NULL)

												<li class="product_mark product_new" style=" background: #0E8CE4;">new</li>	

												@else 
												<li class="product_mark product_new" style=" background: red;">

													@php

												$amount = $row->selling_price - $row->discount_price;
												$discount = $amount/$row->selling_price*100;
												@endphp
                                               {{intval($discount)}}%
												</li>


												@endif
                            </ul>
                        </div>
                        
                        @endforeach
                       
                                          
                       
                        
                    </div>
                    @endif
                    

                    <!-- Shop Page Navigation -->

                    <div class="shop_page_nav d-flex flex-row">
                        
                            {{ $products->links('pagination::bootstrap-4') }}

                        
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>
<script src="{{ asset('frontend/js/shop_custom.js')}}"></script>

@endsection