@extends('layouts.app')

@section('content')
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_styles.css') }} ">
<link rel="stylesheet" type="text/css" href="{{ asset('frontend/styles/contact_responsive.css') }}">

<div class="contact_form">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3" style="border: 1px solid grey; padding: 20px; border-radius: 25px;">
                    <div class="contact_form_container">
                        <div class="contact_form_title text-center">Sign In</div>

          <form action="{{ route('login') }}" id="contact_form" method="post">
            @csrf
                            
                             <div class="form-group">
    <label for="exampleInputEmail1">Email or Phone</label>
    <input type="text" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}"  aria-describedby="emailHelp"  required="">
             @error('email')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
             @enderror
         </div>

      <div class="form-group">
    <label for="exampleInputEmail1">Password</label>
    <input type="password" class="form-control @error('password') is-invalid @enderror"  aria-describedby="emailHelp" name="password" required="">
               @error('password')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
    
                     </div>


                            <div class="contact_form_button">
              <button type="submit" class="btn btn-info">Login</button>
                            </div>
                        </form>
                        <br>
            <a href="{{route('password.request')}}">I forgot my password</a>   <br> <br>          

   <button type="submit" class="btn btn-primary btn-block"><i class="fab fa-facebook-square"></i> Login with Facebook </button>
   
    <a href="" class="btn btn-danger btn-block"><i class="fab fa-google"></i> Login with Google </a>

    <a href="{{ route('register') }}" class="btn btn-info btn-block"> Create an Account </a>          

                    </div>
                </div>
            </div>
        </div>
    </div>
    
@endsection
