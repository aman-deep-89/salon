@extends('layouts.adminlayout')
@section('content')
<div class="row-one">	
    <div class="forms">
        <h3 class="title1">{{ $name }}</h3>
        <div class="form-grids row widget-shadow" data-example-id="basic-forms"> 
            <div class="form-title">
                <h4>{{ $form_detail }} :</h4>
            </div>
            <div class="form-body">
            @if($errors->any())
                <div class="alert alert-danger">
                    @foreach($errors->all() as $error)
                        <p>{{ $error }}</p>
                    @endforeach
                </div>
            @endif
                <form action="{{ route('transactions.store') }}" method="post" id="orderform">
                @csrf
                <div class="form-group"> <label for="date">Date</label> 
                    <input type="date" class="form-control" id="date" name="date" placeholder="Date" value="<?php echo date('Y-m-d'); ?>" /> 
                </div>                 
                <div class="form-group"> <label for="employee_id">Employee</label> 
                {!! Form::select('employee_id', $employees, old('employee_id'), ['class' => 'form-control']) !!}
                </div>
                <div class="form-group row">               
                    <div class="col-md-6">
                        <label for="customer_search">Search Customer</label>
                        <input type="text" class="form-control" id="customer_search" name="customer_search" placeholder="Enter customer name,contact no"/>
                        <input type="hidden" name="customer_id" id="customer_id" />
                        
                    </div>
                    <div class="col-md-6">
                        <p>Can't find the customer <a href="#" id="add_customer" class="btn btn-xs btn-primary">Add Customer</a> <a href="#" id="cancel_add" class="btn btn-xs btn-primary" style="display:none">Cancel</a></p>
                        <div id="customer_detail" style="display:none">
                        <div class="form-group"> <label for="customer_name">Customer Name</label> 
                            <input type="text" class="form-control" id="customer_name" name="customer_name" placeholder="Customer Fullname" value="{{old('customer_name')}}"> 
                        </div>                 
                        <div class="form-group"> <label for="contact_no">Contact No.</label> 
                            <input type="text" class="form-control" id="contact_no" name="contact_no" placeholder="Customer Contact No."  value="{{old('contact_no')}}"> 
                        </div>                 
                        <div class="form-group"> <label for="email_id">Email Id.</label> 
                            <input type="text" class="form-control" id="email_id" name="email_id" placeholder="Customer Email Id"  value="{{old('email_id')}}" /> 
                        </div>
                        <div class="form-group"> <label for="package">Package</label>
                            <input type="text" class="form-control" id="package" name="package" placeholder="Package Name"  value="{{old('package')}}" /> 
                        </div>
                       </div>
                    </div>        
                </div> 
                <div class="row"></div>               
                <h5>Material Used <i>(Optional)</i> <a href="#" id="add" class="btn btn-xs btn-primary">Add New</a></h5>
                <div class="form-group">
                    <table class="table table-bordered" id="material_items">
                        <thead><tr><th>Sr.No</th><th>Material Name</th><th>Quantity Used</th></tr></thead>
                        <tbody></tbody>
                    </table>
                </div>                
                <h5>Services Availed <i>(Optional)</i> <a href="#" id="add2" class="btn btn-xs btn-primary">Add New</a></h5>
                <div class="form-group">
                    <table class="table table-bordered" id="service_detail">
                        <thead><tr><th>Sr.No</th><th>Service Name</th><th>Charges</th><th>Serviced By</th><th></th></tr></thead>
                        <tbody></tbody>
                    </table>
                </div> 
                <div class="form-group"> <label for="total">Total</label> 
                    <input type="number" class="form-control" id="total" name="total" placeholder="Total Amount" readonly value="0"> 
                </div>  
                <div class="form-group"> <label for="balance">Previous Balance(if any)</label> 
                    <input type="number" class="form-control" id="old_balance" name="old_balance" placeholder="Previous Balance" readonly value="0"> 
                </div>  
                <div class="form-group"> <label for="grand_total">Grand Total</label> 
                    <input type="number" class="form-control" id="grand_total" name="grand_total" placeholder="Grand Total" readonly value="0"> 
                </div>           
                <div class="form-group"> <label for="paid">Paid</label> 
                    <input type="number" class="form-control" id="paid" name="paid" placeholder="Paid Amount" value="0"> 
                </div>               
                              
                <div class="form-group"> <label for="balance">Balance</label> 
                    <input type="number" class="form-control" id="balance" name="balance" placeholder="Balance Amount" readonly value="0"> 
                </div>               
                    <button type="submit" class="btn btn-default">Submit</button> 
                </form>                
            </div>
        <textarea style="display:none" id="template">
		<tr>
			<td>
				<label>{0}. Item</label>
			</td>
			<td class='type'>
            {!! Form::select('items[{0}][item_id]', $items, null, ['class' => 'form-control']) !!}
			</td>
			<td class='quantity'>
				<input size='4' class="quantity form-control" min="0" id="items[{0}][item_quantity]" name="items[{0}][item_quantity]"> <a href="#" class="delete_items"><i class="fa fa-times text-danger"></i></a>
			</td>			
		</tr>
    </textarea>
    <textarea style="display:none" id="template2">
		<tr>
			<td>
				<label>{0}. Service</label>
			</td>
			<td class='type'>
            <select name="services[{0}][service_id]" class="form-control">
                @foreach ($service_info as $service)
                <optgroup label="{{ $service->category_name }}">
                @foreach ($service->services as $service_detail)
                    <option value="{{ $service_detail->service_id }}">{{ $service_detail->service_name }}</option>
                @endforeach
                </optgroup>
                @endforeach
            </select>
			</td>
			<td class=''>
				<input size='4' class="charges form-control" min="1" id="services[{0}][service_charges]" name="services[{0}][service_charges]"> 
            </td>
            <td class='type'>
            {!! Form::select('services[{0}][service_by]', $employees, null, ['class' => 'form-control']) !!}            
            </td>
            <td><a href="#" class="delete_items"><i class="fa fa-times text-danger"></i></a></td>
		</tr>
	</textarea>
        </div>	
    </div>			
</div>			
@endsection
@section('scripts')
<link rel="stylesheet" href="{{ asset('css/jquery-ui.css') }}" />
<link rel="stylesheet" href="{{ asset('css/jquery.validation.css') }}" />
<script src="{{ asset('js/validate/jquery.validate.min.js') }}"></script>
<script src="{{ asset('js/jquery-ui.js') }}"></script>
<script type="text/javascript">
    $.validator.messages.max = jQuery.validator.format("Your totals mustn't exceed {0}!");
	$.validator.addMethod("quantity", function(value, element) {
		return !this.optional(element) && !this.optional($(element).parent().children("select")[0]);
	}, "Please enter quantity used.");
	$.validator.addMethod("charges", function(value, element) {
        console.log($(element).parent());
        return !this.optional(element) && !this.optional($(element).parent().prev().children("select")[0]);
	}, "Please enter service charges.");
	$().ready(function() {
		$("#orderform").validate({
			errorPlacement: function(error, element) {
				error.appendTo(element.parent());
			},
			highlight: function(element, errorClass) {
				$(element).addClass(errorClass).parent().children("select").addClass(errorClass);
			}
		});

		var template = jQuery.validator.format($.trim($("#template").val()));
		var template2 = jQuery.validator.format($.trim($("#template2").val()));
		function addRow() {
			$(template(i++)).appendTo("#material_items tbody");
		}
		function addRow2() {
			$(template2(k++)).appendTo("#service_detail tbody");
		}
        var i = 1,k=1;
		// start with one row
		addRow();
		addRow2();
		// add more rows on click
		$("#add").click(function(e) {
            e.preventDefault();
            addRow();
        });
		$("#add2").click(function(e) {
            e.preventDefault();
            addRow2();
        });
        $("#material_items").on("click", ".delete_items",function(e) {
            e.preventDefault();
            i--;
            if(i==0) alert("Cant delete all rows");
            else $(this).parent().parent().remove();
        });
        $("#service_detail").on("click", ".delete_items",function(e) {
            e.preventDefault();
            k--;
            if(k==1) alert("Cant delete all rows");
            else $(this).parent().parent().remove();
        });
		
		// check keyup on quantity inputs to update totals field
		$("#orderform").on("keyup", "input.quantity", function(event) {
			var totals = 0;
			$("#orderitems input.quantity").each(function() {
				totals += +this.value;
			});
			$("#totals").attr("value", totals).valid();
		});
		$("#service_detail").on("keyup", "input.charges", function(event) {
			var totals = 0;
			$("#service_detail input.charges").each(function() {
                totals += +this.value;
			});
			$("#total").attr("value", totals).valid();
            $('#paid').trigger('change');
		});
        $('#paid').change(function() {
            var total=parseFloat($('#total').val());
            var old_balance=parseFloat($('#old_balance').val());
            var paid=parseFloat($(this).val());
            total+=old_balance;
            $('#grand_total').val(total);
            if(total<paid) {
                alert("Paid cannot be greater than Total");
                $(this).val(0);
                $('#balance').val(total); 
                return false;
            }
            else {
                var balance=total-paid;
                $('#balance').val(balance);     
            }
        });
       /* $('#customer_search').autocomplete({
        valueKey:'id',
        source:[{
            url:"{{URL::to('')}}/customers/search_customer?query=%QUERY%",
            type:'remote',
            getValue:function(item){
                //console.log(item);
                return item.name;
            },
            ajax:{
                dataType : 'json'
            }
        }]
    });
    $('button#open').click(function(){
        $('#customer_search').trigger('updateContent open');
        $('#customer_search').focus();
    });*/
    var CSRF_TOKEN ="{{ csrf_token() }}";
    $( "#customer_search" ).autocomplete({
      source: function( request, response ) {
          // Fetch data
          $.ajax({
            url:"{{URL::to('')}}/customers/search_customer",
            type: 'post',
            dataType: "json",
            data: {
               _token: CSRF_TOKEN,
               term: request.term
            },
            success: function( data ) {
               response( data );
            }
          });
        },
      minLength: 2,
      select: function( event, ui ) {
        $('#customer_id').val(ui.item.id );
        $('#old_balance').val(ui.item.pending );
        $('#paid').trigger('change');
      }
    });
    $('#add_customer').click(function(e) {
        e.preventDefault();
        $('#customer_detail').slideDown();
        $(this).hide();
        $('#cancel_add').show();
    });
    $('#cancel_add').click(function(e) {
        e.preventDefault();
        $('#customer_detail').slideUp();
        $(this).hide();
        $('#add_customer').show();
    });
});
</script>
@stop