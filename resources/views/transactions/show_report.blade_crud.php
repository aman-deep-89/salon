<div class="row-one">    
    <div class="tables">
        <h3 class="title1">Transaction List</h3>
        <a href="{{ route('transactions.create') }}" class="btn btn-primary">Add New</a>
        <div class="panel-body widget-shadow">
            <h4>Transactions Report from {{ $dates['from'] }} Untill {{ $dates['untill'] }}</h4>
            @if(session()->get('success'))
                <div class="alert alert-success">
                {{ session()->get('success') }}  
                </div>
            @endif
<table class="table table-bordered table-striped" id="laravel_datatable">
   <thead>
      <tr>
         <th>ID</th>
         <th>S. No</th>
         <th>Title</th>
         <th>Product Code</th>
         <th>Description</th>
         <th>Created at</th>
         <th>Action</th>
      </tr>
   </thead>
</table>
</div>
  
<div class="modal fade" id="ajax-product-modal" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
    <div class="modal-header">
        <h4 class="modal-title" id="productCrudModal"></h4>
    </div>
    <div class="modal-body">
        <form id="productForm" name="productForm" class="form-horizontal">
           <input type="hidden" name="product_id" id="product_id">
            <div class="form-group">
                <label for="name" class="col-sm-2 control-label">Title</label>
                <div class="col-sm-12">
                    <input type="text" class="form-control" id="title" name="title" placeholder="Enter Tilte" value="" maxlength="50" required="">
                </div>
            </div> 
            <div class="form-group">
                <label for="name" class="col-sm-2 control-label">Product Code</label>
                <div class="col-sm-12">
                    <input type="text" class="form-control" id="product_code" name="product_code" placeholder="Enter Tilte" value="" maxlength="50" required="">
                </div>
            </div>
  
            <div class="form-group">
                <label class="col-sm-2 control-label">Description</label>
                <div class="col-sm-12">
                    <input type="text" class="form-control" id="description" name="description" placeholder="Enter Description" value="" required="">
                </div>
            </div>
            <div class="col-sm-offset-2 col-sm-10">
             <button type="submit" class="btn btn-primary" id="btn-save" value="create">Save changes
             </button>
            </div>
        </form>
    </div>
    <div class="modal-footer">
         
    </div>
</div>
</div>
</div>
<script>
 var SITEURL = '{{URL::to('')}}';
 $(document).ready( function () {
   $.ajaxSetup({
      headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
  });
  $('#laravel_datatable').DataTable({
         processing: true,
         serverSide: true,
         ajax: {
          url: SITEURL + "/transactions/show_report",
          type: 'POST',
         },
         columns: [
                  {data: 't_date', name: 't_date',},
                  {data: 'customer_name', name: 'customer_name',},
                  { data: 'service_desc', name: 'service_desc' },
                  { data: 'total_amount', name: 'total_amount' },
                  { data: 'balance', name: 'balance' },
                  {data: 'action', name: 'action', orderable: false},
               ],
        order: [[0, 'desc']]
      });
 
 /*  When user click add user button */
    $('#create-new-product').click(function () {
        $('#btn-save').val("create-product");
        $('#product_id').val('');
        $('#productForm').trigger("reset");
        $('#productCrudModal').html("Add New Product");
        $('#ajax-product-modal').modal('show');
    });
  
   /* When click edit user */
    $('body').on('click', '.edit-product', function () {
      var product_id = $(this).data('id');
      $.get('product-list/' + product_id +'/edit', function (data) {
         $('#title-error').hide();
         $('#product_code-error').hide();
         $('#description-error').hide();
         $('#productCrudModal').html("Edit Product");
          $('#btn-save').val("edit-product");
          $('#ajax-product-modal').modal('show');
          $('#product_id').val(data.id);
          $('#title').val(data.title);
          $('#product_code').val(data.product_code);
          $('#description').val(data.description);
      })
   });
 
    $('body').on('click', '#delete-product', function () {
  
        var product_id = $(this).data("id");
        
        if(confirm("Are You sure want to delete !")){
          $.ajax({
              type: "get",
              url: SITEURL + "product-list/delete/"+product_id,
              success: function (data) {
              var oTable = $('#laravel_datatable').dataTable(); 
              oTable.fnDraw(false);
              },
              error: function (data) {
                  console.log('Error:', data);
              }
          });
        }
    }); 
   
   });
  
if ($("#productForm").length > 0) {
      $("#productForm").validate({
  
     submitHandler: function(form) {
  
      var actionType = $('#btn-save').val();
      $('#btn-save').html('Sending..');
       
      $.ajax({
          data: $('#productForm').serialize(),
          url: SITEURL + "product-list/store",
          type: "POST",
          dataType: 'json',
          success: function (data) {
  
              $('#productForm').trigger("reset");
              $('#ajax-product-modal').modal('hide');
              $('#btn-save').html('Save Changes');
              var oTable = $('#laravel_datatable').dataTable();
              oTable.fnDraw(false);
               
          },
          error: function (data) {
              console.log('Error:', data);
              $('#btn-save').html('Save Changes');
          }
      });
    }
  })
}
</script>