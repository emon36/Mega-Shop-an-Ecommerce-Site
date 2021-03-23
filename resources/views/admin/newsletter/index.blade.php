@extends('admin.admin_layouts')

@section('admin_content')


<div class="sl-mainpanel">
     

    <div class="sl-pagebody">
      <div class="sl-page-title">
        <h5>Subcription List</h5>
       
      </div><!-- sl-page-title -->

      <div class="card pd-20 pd-sm-40">

         

        <div class="table-wrapper">
          <table id="datatable1" class="table display responsive nowrap">
            <thead>
              <tr>
                <th class="wd-10p">Index</th>
                <th class="wd-15p">Subscriber Email</th>
                <th class="wd-15p">Subcription Timing</th>
                <th class="wd-20p">Action</th>
                
              </tr>
            </thead>
            <tbody>
              @foreach($newsletter as $key=>$row)
              <tr>
                <td>{{ $key +1 }}</td>
                <td>{{ $row->email }}</td>
                <td> {{($row->created_at)->diffForHumans()}}
                </td>}
                <td>
                  
                  <a href="{{route('delete.newsletter',$row->id)}}" class="btn btn-sm btn-danger" id="delete">Delete</a>
                </td>
                 
            </tr>
              @endforeach

             
               
            </tbody>
          </table>
        </div><!-- table-wrapper -->
      </div><!-- card -->

      


  </div><!-- sl-mainpanel -->

</div>
@endsection