@extends('layouts.app')

@section('content')
       
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_styles.css') }} ">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_responsive.css') }}">

<div class="contact_form">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3" style="border: 1px solid grey; padding: 20px; border-radius: 25px;">
                    <div class="contact_form_container">
                        <div class="contact_form_title text-center">Sign Up</div>

                        <form action="{{ route('register') }}" id="contact_form" method="Post">
                            @csrf
                                           
                         <div class="form-group">
                   <label for="exampleInputName">Full Name</label>
                   <input type="text" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Your Full Name " name="name" required="">
                   
                   @error('name')
                   <span class="invalid-feedback" role="alert">
                       <strong>{{ $message }}</strong>
                   </span>
               @enderror
                        </div>
               
               
                       <div class="form-group">
                   <label for="exampleInputPhone">Phone</label>
                   <input type="text" class="form-control @error('phone') is-invalid @enderror" name="phone" value="{{ old('phone') }}"  aria-describedby="emailHelp" placeholder="Enter Your Phone " required="">
                   
                   @error('phone')
                   <span class="invalid-feedback" role="alert">
                       <strong>{{ $message }}</strong>
                   </span>
               @enderror
                        </div>
               
               
                        <div class="form-group">
                   <label for="exampleInputEmail">Email</label>
                   <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}"  aria-describedby="emailHelp" placeholder="Enter Your Email " required="">
                   
                   @error('email')
                   <span class="invalid-feedback" role="alert">
                       <strong>{{ $message }}</strong>
                   </span>
                  @enderror
                        </div>
               
               
               
                        <div class="form-group">
                   <label for="exampleInputPassowrd">Password</label>
                   <input type="password" class="form-control"  aria-describedby="emailHelp" placeholder="Enter Your Password " name="password" required="">
                   
                   @error('password')
                   <span class="invalid-feedback" role="alert">
                       <strong>{{ $message }}</strong>
                   </span>
                   @enderror
                        </div>
               
                        <div class="form-group">
                   <label for="exampleInputPassoword">Confirm Password</label>
                   <input type="password" class="form-control"  aria-describedby="emailHelp" placeholder="Re-Type Password " name="password_confirmation" required="">
                        </div>
               
               
                                           <div class="contact_form_button d-flex justify-content-center ">
                       <button type="submit" class="btn btn-info ">Sign Up</button>
                       
                                           </div>
                                       </form>
               
                                   </div>
                               </div>
               
               
               
               
               
               
               
                           </div>
                       </div>
                       <div class="panel"></div>
                   </div>
               
               
               


                    </div>
                </div>
            </div>
        </div>
        @endsection