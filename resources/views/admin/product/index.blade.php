@extends('admin.admin_layouts')

@section('admin_content')


<div class="sl-mainpanel">
     

    <div class="sl-pagebody">
      <div class="sl-page-title">
        <h5>Product Table</h5>
       
      </div><!-- sl-page-title -->

      <div class="card pd-20 pd-sm-40">
        <h6 class="card-body-title">Product List
        </h6>
         

        <div class="table-wrapper">
          <table id="datatable1" class="table display responsive nowrap">
            <thead>
              <tr>
                <th class="wd-10p">Product Code</th>
                <th class="wd-15p">Product Name</th>
                <th class="wd-10p">Image</th>
                <th class="wd-10p">Category</th>
                
                <th class="wd-5p">Quantity</th>
                <th class="wd-10p">Status</th>
                <th class="wd-10p">Action</th>
              </tr>
            </thead>
            <tbody>
              @foreach($product as $row)
              <tr>
                <td>{{substr($row->product_code,0,10) }}</td>
                <td>{{substr
                ($row->product_name,0,24)}}</td>

           <td> <img src="{{ URL::to($row->image_one) }}" height="50px;" width="50px;"> </td>
               <td>{{ $row->category_name }}</td>
               
               <td>{{ $row->product_quantity }}</td>
               <td> 
                @if($row->status == 1)
              <span class="badge badge-success">Active</span>
                @else
              <span class="badge badge-danger">Inactive</span>
                @endif                  

              </td>

              <td>  


                <a href="{{ route('edit.product',$row->id) }} " class="btn btn-sm btn-info" title="edit"><i class="fa fa-edit"></i></a>
                <a href="{{ route('delete.product',$row->id) }}" class="btn btn-sm btn-danger" title="delete" id="delete"><i class="fa fa-trash"></i></a>
              
                <a href="{{ route('view.product',$row->id) }}" class="btn btn-sm btn-warning" title="Show"><i class="fa fa-eye"></i></a>

                @if($row->status == 1)
   <a href="{{ route('inactive',$row->id) }}" class="btn btn-sm btn-danger" title="Inactive" ><i class="fa fa-thumbs-down"></i></a>
              @else
    <a href="{{ route('active',$row->id) }}" class="btn btn-sm btn-info" title="Active" ><i class="fa fa-thumbs-up"></i></a>
              @endif
              </td>
                 
            </tr>
              @endforeach

             
               
            </tbody>
          </table>
        </div><!-- table-wrapper -->
      </div><!-- card -->

      


  </div><!-- sl-mainpanel -->

<script type= "text/javascript" >
$(document).ready(function() {
    $('#example').dataTable( {
        "scrollX": true
    } );
} );
</script>





@endsection