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
         <form method="post" action="{{route('update.subcategory', $subcategory->id)}}">
          @csrf
           <div class="modal-body pd-20"> 
          <div class="form-group">
            <label for="exampleInputEmail1">Sub Category Name</label>
            <input type="text" class="form-control" id="exampleInputEmail1" value="{{ $subcategory->subcategory_name }}" aria-describedby="emailHelp" placeholder="Category" name="subcategory_name">
          
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">category Name</label>
            <select class="form-controll" name="category_id">
    
                @foreach ($category as $row)
                <option value="{{$row->id}}" @php
                    if($row->id == $subcategory->category_id)
                {
                    echo "selected";
                }
                @endphp> {{$row->category_name}}</option>
                @endforeach
            </select>
          </div>
          <button type="submit" class="btn btn-info pd-x-20">Update</button>
        </div><!-- table-wrapper -->
      </div><!-- card -->
  </div><!-- sl-mainpanel -->

    

@endsection