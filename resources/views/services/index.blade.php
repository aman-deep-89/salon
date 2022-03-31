@extends('layouts.adminlayout')
@section('content')
<div class="row-one">    
    <div class="tables">
        <h3 class="title1">{{ $name ?? '' }}</h3>
        <a href="{{ route('services.create') }}" class="btn btn-primary">Add New</a>
        <div class="panel-body widget-shadow">
            <h4>Services</h4>
            @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}  
    </div>
  @endif
            <table class="table">
                <thead>
                    <tr>
                        <th>#</th><th>Category</th>
                        <th>Service Name</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>	
                @php $a = 1 @endphp
                @foreach ($services as $service)
                <tr><td>{{$a}}</td><td>{{$service->category_name}}</td><td>{{$service->service_name}}</td><td>{{$service->service_description}}</td>
                <!--<td><a href="{{ url('') }}/edit_service/{{$a}}">Edit</a></td>-->
                <td><a href="{{ route('services.edit', $service->service_id) }}"  class="btn btn-xs btn-info">Edit</a>
                <a href="#" data-toggle="modal" onclick="deleteData({{$service->service_id}})"  data-target="#DeleteModal" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i> Delete</a>
                </td>
                @php $a++ @endphp
                </tr>
                @endforeach
                </tbody>	
            </table>
        </div> 
    </div>			
</div>
<div id="DeleteModal" class="modal fade text-danger" role="dialog">
   <div class="modal-dialog ">
     <!-- Modal content-->
     <form action="" id="deleteForm" method="post">
         <div class="modal-content">
             <div class="modal-header bg-danger">
                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                 <h4 class="modal-title text-center">DELETE CONFIRMATION</h4>
             </div>
             <div class="modal-body">
                 {{ csrf_field() }}
                 {{ method_field('DELETE') }}
                 <p class="text-center">Are You Sure Want To Delete ?</p>
             </div>
             <div class="modal-footer">
                 <center>
                     <button type="button" class="btn btn-success" data-dismiss="modal">Cancel</button>
                     <button type="submit" name="" class="btn btn-danger" data-dismiss="modal" onclick="formSubmit()">Yes, Delete</button>
                 </center>
             </div>
         </div>
     </form>
   </div>
</div>
<script type="text/javascript">
var url;
     function deleteData(id)
     {
         var id = id;
         url = '{{ route("services.destroy", ":id") }}';
         url = url.replace(':id', id);
         console.log("mdified="+url);
         $("#deleteForm").attr('action', url);
     }
     function formSubmit()
     {
         $("#deleteForm").submit();
     }

/*$(function() {
        alert();
    $("#deleteForm").submit(function(e) {
        alert();
        e.preventDefault();
        //var path=$("#deleteForm").attr('action');
        console.log("url=="+url);
        $.ajax({
            'url':url,
            'method':"DELETE",
            'success',function(res) {
            if(res.success) location.reload();
            else alert("error");
        });
    }); 
});*/
  </script>
@endsection