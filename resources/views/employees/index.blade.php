@extends('layouts.adminlayout')
@section('content')
<div class="row-one">    
    <div class="tables">
        <h3 class="title1">{{ $name ?? '' }}</h3>
        <a href="{{ route('employees.create') }}" class="btn btn-primary">Add New</a>
        <div class="panel-body widget-shadow">
            <h4>Employees</h4>
            @if(session()->get('success'))
    <div class="alert alert-success">
      {{ session()->get('success') }}  
    </div>
  @endif
            <table class="table">
                <thead>
                    <tr>
                        <th>#</th><th>Photo</th>
                        <th>Employee Name</th><th>Date of Birth</th><th>Salary</th>
                        <th>Contact No</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>	
                @php $a = 1 @endphp
                @foreach ($employees as $employee)
                <tr><td>{{$a}}</td>
                <td>@if(empty($employee->photo)) <img src="{{ asset('theme1/images/user_default.png') }}" class="avatar image1" width="100" height="100"> 
                @else <img src="{{ asset('uploads/'.$employee->photo) }}" class="avatar image1" width="100" height="100"> @endif</td>
                <td>{{$employee->employee_name}}</td><td>{{$employee->birth_date}}</td><td>Rs. {{$employee->salary}}</td><td>{{$employee->contact_no}}</td>
                <!--<td><a href="{{ url('') }}/edit_service/{{$a}}">Edit</a></td>-->
                <td><a href="{{ route('employees.edit', $employee->employee_id) }}"  class="btn btn-xs btn-info">Edit</a>
                <a href="#" data-toggle="modal" onclick="deleteData({{$employee->employee_id}})"  data-target="#DeleteModal" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i> Delete</a>
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
         url = '{{ route("employees.destroy", ":id") }}';
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