@extends('layouts.adminlayout')
@section('content')
<div class="row-one">    
    <div class="tables">
        <h3 class="title1">Transaction List</h3>
        <a href="{{ route('transactions.create') }}" class="btn btn-primary">Add New</a>
        <div class="panel-body widget-shadow">
            <h4>Last 10 Transactions</h4>
            @if(session()->get('success'))
                <div class="alert alert-success">
                {{ session()->get('success') }}  
                </div>
            @endif
            <table class="table">
                <thead>
                    <tr>
                        <th>#</th><th>Date</th>
                        <th>Customer Detail</th><th>Serviced By</th>
                        <th>Service Description</th><th>Total</th><th>Balance</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>	
                @php $a = 1 @endphp
                @foreach ($transactions as $transaction)
                    <tr><td>{{$a}}</td><td>{{$transaction->t_date}}</td><td>{{$transaction->customer_name}} <br/>{{$transaction->contact_no}}<br/>{{$transaction->email_id}}</td><td>{{$transaction->employee_name}}</td>
                    <td><?php echo str_replace(',','<br/>',$transaction->service_desc); ?> </td>
                    <td>{{ $transaction->total_amount }}</td>
                    <td>{{ $transaction->balance }}</td>
                    <td><a class="btn btn-primary btn-xs" href="{{ route('transactions.edit', $transaction->tid) }}"><i class="glyphicon glyphicon-edit"></i> Edit</a>
                    <a href="#" data-toggle="modal" onclick="deleteData({{$transaction->tid}})"  data-target="#DeleteModal" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> Delete</a>
                    </td>
                    </tr>
                    @php $a++ @endphp
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
         url = '{{ route("transactions.destroy", ":id") }}';
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