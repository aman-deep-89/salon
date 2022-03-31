@extends('layouts.adminlayout')
@section('content')
<div class="row-one">    
    <div class="tables">
        <h3 class="title1">Transaction List</h3>
        <a href="{{ route('transactions.create') }}" class="btn btn-primary">Add New</a>
        <div class="panel-body widget-shadow">
            <h4>Transactions Report from {{ $dates['from'] }} Untill {{ $dates['untill'] }}</h4>
            <h4>Total <span id="total_text" class="btn btn-success">{{ $total ?? '' }} </span></h4>
            @if(session()->get('success'))
                <div class="alert alert-success">
                {{ session()->get('success') }}  
                </div>
            @endif
<table class="table table-bordered table-striped" id="laravel_datatable">
    <thead>
        <tr>
            <th>#</th><th>Date</th>
            <th>Customer Detail</th><th>Serviced By</th>
            <th>Service Description</th><th>Total</th><th>Balance</th>
            <th>Actions</th>
        </tr>
    </thead>            
</table>
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
@endsection
@section('scripts')
<script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
<script>
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
         //$("#deleteForm").submit();
     }
 var SITEURL = '{{URL::to('')}}';
 $(document).ready( function () {
   $.ajaxSetup({
      headers: {
         // 'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
          'X-CSRF-TOKEN': '{{ csrf_token()}}'
      }
  });
  $('#laravel_datatable').DataTable({
         processing: true,
         serverSide: true,
         ajax: {
          url: SITEURL + "/transactions/get_ajax_report_data",
          type: 'POST',
          dataType:'json',
          data:function(d) {
              d.from='<?php echo $dates['from']; ?>',
              d.untill='<?php echo $dates['untill']; ?>',
              d._token='{{ csrf_token() }}'
          },
          complete:function(res) {
            $("html").getNiceScroll().resize();
            dat=JSON.parse(res.responseText);
            $('#total_text').text("Rs. "+dat.total);
          }
         },
         columns: [
                  
                  { data: 'DT_RowIndex', name: 'DT_RowIndex' },
                  {data: 't_date', name: 't_date',},
                  {data: 'customer_name', name: 'customer_name',},
                  {data: 'employee_name', name: 'employee_name',},
                  { data: 'service_desc', name: 'service_desc' },
                  { data: 'total_amount', name: 'total_amount' },
                  { data: 'balance', name: 'balance' },
                  {data: 'action', name: 'action', orderable: false},
               ],
        order: [[0, 'desc']]
      });
 });
</script>
@stop