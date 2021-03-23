@extends('admin.admin_layouts')

@section('admin_content')


<div class="sl-mainpanel">
     

    <div class="sl-pagebody">
      <div class="sl-page-title">
        <h5>brand Table</h5>
       
      </div><!-- sl-page-title -->

      <div class="card pd-20 pd-sm-40">
        <h6 class="card-body-title">Brand Update
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
         <form method="post" action="{{route('update.brand', $brand->id)}}" enctype="multipart/form-data" >
          @csrf
           <div class="modal-body pd-20"> 
          <div class="form-group">
            <label for="exampleInputEmail1">brand Name</label>
            <input type="text" class="form-control" id="exampleInputEmail1" value="{{ $brand->brand_name }}" aria-describedby="emailHelp" placeholder="brand" name="brand_name">
            
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">brand Logo</label>
            <input type="file" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="brand logo" name="brand_logo">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Old brand Logo</label>
            <img src="{{ URL::to ($brand->brand_logo) }}" height="70px;" witdth ="80px;">
            <input type="hidden" name="old_logo" value="{{ $brand->brand_logo}}">
          </div>


          <button type="submit" class="btn btn-info pd-x-20">Update</button>
        </div>
      </div><!-- card -->
  </div><!-- sl-mainpanel -->

    

@endsection