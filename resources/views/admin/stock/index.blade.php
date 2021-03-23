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
                  <th class="wd-15p">Image</th>
                  <th class="wd-15p">Category</th>
                  <th class="wd-15p">Brand</th>
                  <th class="wd-5p">Quantity</th>
                  <th class="wd-15p">Status</th>
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
               <td>  {{ $row->brand_name }}</td>
               <td>{{ $row->product_quantity }}</td>
               <td> 
                @if($row->product_quantity < 5)
              
              <span class="badge badge-danger">Stock Low</span>
              @else
              <span class="badge badge-info"> Sufficiant </span>              
                @endif                  

              </td>

              <td>  


                <a href="{{ route('edit.product',$row->id) }} " class="btn btn-sm btn-info" title="edit"><i class="fa fa-edit"></i></a>
               
            
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