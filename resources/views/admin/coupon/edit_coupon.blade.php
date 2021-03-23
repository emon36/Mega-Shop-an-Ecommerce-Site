@extends('admin.admin_layouts')

@section('admin_content')


<div class="sl-mainpanel">
     

    <div class="sl-pagebody">
      <div class="sl-page-title">
        <h5>coupon Table</h5>
       
      </div><!-- sl-page-title -->

      <div class="card pd-20 pd-sm-40">
        <h6 class="card-body-title">coupon Update
        </h6>
         

        <div class="wrapper">
            @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
         <form method="post" action="{{route('update.coupon', $coupon->id)}}">
          @csrf
           <div class="modal-body pd-20"> 
          <div class="form-group">
            <label for="exampleInputEmail1">Coupon Code</label>
            <input type="text" class="form-control" id="exampleInputEmail1" value="{{ $coupon->coupon_name }}" aria-describedby="emailHelp" placeholder="coupon" name="coupon_name">
           
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Coupon discount</label>
            <input type="number" class="form-control" id="exampleInputEmail1" value="{{ $coupon->discount }}" aria-describedby="emailHelp" placeholder="coupon" name="discount">
           
          </div>
          <button type="submit" class="btn btn-info pd-x-20">Update</button>
        </div><!-- table-wrapper -->
      </div><!-- card -->
  </div><!-- sl-mainpanel -->

    

@endsection