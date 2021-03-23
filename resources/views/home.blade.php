@extends('layouts.app')
@section('content')
@php
$order = DB::table('orders')->where('user_id',Auth::id())->orderBy('id','DESC')->limit(10)->get();
@endphp 

<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

<!-- CSS Libraries -->

<!-- Template Stylesheet -->
<link rel="stylesheet" type="text/css" href="{{asset('frontend/styles/profile_style.css')}}">

<div class="breadcrumb-wrap">
  <div class="container-fluid">
      <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item"><a href="{{route('product.shop')}}">Shop</a></li>
      </ul>
  </div>
</div>
<div class="my-account">
  <div class="container-fluid">
      <div class="row">
          <div class="col-md-3">
              <div class="nav flex-column nav-pills" role="tablist" aria-orientation="vertical">
                  <a class="nav-link active" id="dashboard-nav" data-toggle="pill" href="#dashboard-tab" role="tab"><i class="fa fa-tachometer-alt"></i>Dashboard</a>
                  <a class="nav-link" id="orders-nav" data-toggle="pill" href="#orders-tab" role="tab"><i class="fa fa-shopping-bag"></i>Orders</a>
                  <a class="nav-link" id="account-nav" data-toggle="pill" href="#account-tab" role="tab"><i class="fa fa-user"></i>Account Details</a>
                  <a class="nav-link" href="{{route('user.logout')}}"><i class="fa fa-sign-out-alt"></i>Logout</a>
              </div>
          </div>
          <div class="col-md-9">
              <div class="tab-content">
                  <div class="tab-pane fade show active" id="dashboard-tab" role="tabpanel" aria-labelledby="dashboard-nav">
                      <h4>Dashboard</h4>
                      <p class="info">
                        Welcome to megashop dashboard 
                      </p> 
                  </div>
                  <div class="tab-pane fade" id="orders-tab" role="tabpanel" aria-labelledby="orders-nav">
                      <div class="table-responsive">
                          <table class="table table-bordered">
                              <thead class="thead-dark">
                                <tr>
                                  <th scope="col">Payment Type </th>
                                 
                                  <th scope="col">Amount </th>
                                  <th scope="col">Date </th>
                                  <th scope="col">Status  </th>
                                  <th scope="col">Status Code </th>
                                
                    
                                </tr>
                              </thead>
                              <tbody>
                                 @foreach($order as $row)
            <tr>
              <td scope="col">{{ $row->payment_type }} </td>
              
              <td scope="col">{{ $row->total }}$  </td>
              <td scope="col">{{ $row->date }}  </td>

               <td scope="col">
          @if($row->status == 0)
          <span class="badge badge-warning">Pending</span>
          @elseif($row->status == 1)
          <span class="badge badge-info">Payment Accept</span>
            @elseif($row->status == 2)
            <span class="badge badge-warning">Progress</span>
            @elseif($row->status == 3)
            <span class="badge badge-success">Delevered</span>
            @else
            <span class="badge badge-danger">Cancled</span>

          @endif  

        </td>

        <td scope="col">{{ $row->status_code }}  </td>
        
      </tr>

@endforeach
                              </tbody>
                          </table>
                      </div>
                  </div>
                 
     
                  
                  <div class="tab-pane fade" id="account-tab" role="tabpanel" aria-labelledby="account-nav">
                      <h4>Account Details</h4>
                      <form method="POST" action="{{ route('update.profile',$user) }}">
                        @csrf
                      <div class="row">
                          <div class="col-md-6">
                              <label for="Name"> Name </label>
                              <input class="form-control" value="{{$user->name}}" name="name" type="text" placeholder="Full Name">
                          </div>
                          
                          <div class="col-md-6">
                            <label for="Name"> Phone </label>

                              <input class="form-control" value="{{$user->phone}}" name="phone" type="text" placeholder="Mobile">
                          </div>
                          <div class="col-md-6">
                            <label for="Name"> Email </label>

                              <input class="form-control" value="{{$user->email}}" name="email" type="text" placeholder="Email">
                          </div>
                          <div class="col-md-6">
                            <label for="Name"> Address </label>

                              <input class="form-control" value="{{$user->address}}" name="address" type="text" placeholder="Address">
                          </div>
                          <div class="col-md-12">
                              <button class="btn" type="submit">Update Account</button>
                              <br><br>
                          </div>
                      </div>
                      </form>
                      
                      <h4>Password change</h4>
                      <form method="POST" action="{{ route('pass.update') }}" aria-label="{{ __('Reset Password') }}">
                        @csrf
                      <div class="row">
                          @csrf
  
                          <div class="col-md-12">
                            <input id="oldpass" type="password" class="form-control{{ $errors->has('oldpass') ? ' is-invalid' : '' }}" name="oldpass" value="{{ $oldpass ?? old('oldpass') }}" required autofocus placeholder="current password">
                             
                            @if($errors->has('oldpass'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('oldpass') }}</strong>
                                </span>
                            @endif
                          </div>
                          <div class="col-md-6">
                            <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required placeholder="new password">

                            @if ($errors->has('password'))
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $errors->first('password') }}</strong>
                                </span>
                            @endif
                          </div>
                          <div class="col-md-6">
                             
                            
                              <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required placeholder="confirm password">
                         
                          </div>
                          <div class="col-md-12">
   
                            <button type="submit" class="btn btn-primary">
                              {{ __('Reset Password') }}
                          </button>
                          </div>
                       
                      </div>
                      </form>
                  </div>
          </div>
              </div>
          </div>
      </div>
  </div>




@endsection