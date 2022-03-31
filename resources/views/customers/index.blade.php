@extends('layouts.adminlayout')
@section('content')
<div class="row-one">    
    <div class="tables">
        <h3 class="title1">Transaction List</h3>
        <div class="panel-body widget-shadow">
            <h4>Customer List</h4>
            <h4>Total Balance<span id="total_text" class="btn btn-success">{{ $total ?? '' }} </span></h4>
            @if(session()->get('success'))
                <div class="alert alert-success">
                {{ session()->get('success') }}  
                </div>
            @endif
            @if(session()->get('error'))
                <div class="alert alert-danger">
                {{ session()->get('error') }}  
                </div>
            @endif
<table class="table table-bordered table-striped" id="laravel_datatable">
    <thead>
        <tr>
            <th>#</th>
            <th>Customer Name</th><th>Contact No</th>
            <th>Email</th><th>Total Amount</th><th>Balance</th>
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
         url = '{{ route("customers.destroy", ":id") }}';
         url = url.replace(':id', id);
         console.log("mdified="+url);
         $("#deleteForm").attr('action', url);
     }
     function formSubmit()
     {
         $("#deleteForm").submit();
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
          url: SITEURL + "/customers/get_ajax_report_data",
          type: 'POST',
          dataType:'json',
          data:function(d) {
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
                  {data: 'customer_name', name: 'customer_name',},
                  {data: 'contact_no', name: 'contact_no',},
                  { data: 'email_id', name: 'email_id' },
                  { data: 'c_total_charges', name: 'c_total_charges' },
                  { data: 'c_balance', name: 'c_balance' },
                  {data: 'action', name: 'action', orderable: false},
               ],
        order: [[0, 'desc']]
      });
 });
</script>
@stop