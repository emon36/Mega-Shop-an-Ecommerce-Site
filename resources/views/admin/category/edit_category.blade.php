@extends('admin.admin_layouts')

@section('admin_content')


<div class="sl-mainpanel">
     

    <div class="sl-pagebody">
      <div class="sl-page-title">
        <h5>Category Table</h5>
       
      </div><!-- sl-page-title -->

      <div class="card pd-20 pd-sm-40">
        <h6 class="card-body-title">Category Update
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
         <form method="post" action="{{route('update.category', $category->id)}}">
          @csrf
           <div class="modal-body pd-20"> 
          <div class="form-group">
            <label for="exampleInputEmail1">Category Name</label>
            <input type="text" class="form-control" id="exampleInputEmail1" value="{{ $category->category_name }}" aria-describedby="emailHelp" placeholder="Category" name="category_name">
            <button type="submit" class="btn btn-info pd-x-20">Update</button>
          </div>
        </div><!-- table-wrapper -->
      </div><!-- card -->
  </div><!-- sl-mainpanel -->

    

@endsection