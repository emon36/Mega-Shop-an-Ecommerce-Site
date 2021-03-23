@extends('layouts.app')
@section('content') 

@php

 

@endphp


<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/tracking.css') }}">


<div class="container">
    <article class="card">
        <header class="card-header"> My Orders / Tracking </header>
        @foreach($track as $tr)
        <div class="card-body">
            <h6>Order ID: </h6>
            <article class="card">
                <div class="card-body row">
                    <div class="col"> <strong>Estimated Delivery time:</strong> <br>Three days After Order Placed </div>
                    <div class="col"> <strong>Shipping BY:</strong> <br> Mega Shop, | <i class="fa fa-phone"></i> +8801977451259 </div>
                    <div class="col"> <strong>Status:</strong> <br> @if($tr->status == 0)
                        <h4>Note : Your Order are Under Review  </h4>
                       
                        @elseif($tr->status == 1)
                         <h4>Note : Payment Accepted  </h4>
                       
                          @elseif($tr->status == 2)
                         <h4>Note : Packing Done Handover Process  </h4>
                       
                         @elseif($tr->status == 3)
                         <h4>Note : Order Complete  </h4>
                       
                        @else
                       
                        <h4>Note : Order Cancel  </h4>
                       
                        @endif
                         </div>
                    <div class="col"> <strong>Tracking #:</strong> <br> {{$tr->status_code}} </div>
                </div>
            </article>
            @if($tr->status == 0)
            <div>                
            <div class="track">
               
                <div class="step "> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                <div class="step"> <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> Picked by courier</span> </div>
                <div class="step"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> On the way </span> </div>
                <div class="step"> <span class="icon"> <i class="fas fa-truck-loading"></i> </span> <span class="text">Ready for pickup</span> </div>
               
            </div>
            </div>
            @elseif ($tr->status == 1)
            <div>                
                <div class="track">
                   
                    <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                    <div class="step"> <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> Picked by courier</span> </div>
                    <div class="step"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> On the way </span> </div>
                    <div class="step"> <span class="icon"> <i class="fas fa-truck-loading"></i> </span> <span class="text">Ready for pickup</span> </div>
                   
                </div>
                </div>
                @elseif ($tr->status == 2)
            <div>                
                <div class="track">
                   
                    <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                    <div class="step active"> <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> Picked by courier</span> </div>
                    <div class="step active"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> On the way </span> </div>
                    <div class="step"> <span class="icon"> <i class="fas fa-truck-loading"></i> </span> <span class="text">Ready for pickup</span> </div>
                   
                </div>
                </div>
                @elseif ($tr->status == 3)
            <div>                
                <div class="track">
                   
                    <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span class="text">Order confirmed</span> </div>
                    <div class="step active"> <span class="icon"> <i class="fa fa-user"></i> </span> <span class="text"> Picked by courier</span> </div>
                    <div class="step active"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span class="text"> On the way </span> </div>
                    <div class="step active"> <span class="icon"> <i class="fas fa-truck-loading"></i> </span> <span class="text">Ready for pickup</span> </div>
                   
                </div>
                </div>

                @else
                <div class="
                track">

                <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
            @endif
           
            <hr>
            <ul class="row">

                
                
                <li class="col-md-4">
                    <figure class="itemside mb-3">
                        <figcaption class="info align-self-center">
                            <p class="title"> Product Name: {{$tr->product_name}} <br> Color: {{$tr->color}} </p> <span class="text-muted">Qunatity: {{$tr->quantity}} </span>
                        </figcaption>
                    </figure>
                </li>
                
            </ul>
            <hr>
           
        </div>
        @endforeach
    </article>
</div>


@endsection