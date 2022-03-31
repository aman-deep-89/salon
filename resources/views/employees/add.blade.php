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
            <form action="{{ route('employees.store') }}" method="post">
                <div class="col-md-6">
                @csrf                
                <div class="form-group">
                    <label for="employee_name">Employee Name</label>
                    <input type="text" class="form-control" id="employee_name" name="employee_name" placeholder="Employee Name"> 
                </div> 
                <div class="form-group">
                    <label for="birth_date">Date of Birth</label>
                    <input type="date" class="form-control" id="birth_date" name="birth_date" placeholder="Date of Birth"> 
                </div> 
                <div class="form-group">
                    <label for="contact_no">Contact No</label>
                    <input type="text" class="form-control" id="contact_no" name="contact_no" placeholder="Contact No."> 
                </div> 
                <div class="form-group">
                    <label for="designation">Designation</label>
                    <input type="text" class="form-control" id="designation" name="designation" placeholder="Designation"> 
                </div> 
                <div class="form-group">
                    <label for="salary_type">Salary Type</label>
                    <select class="form-control" name="salary_type">
                        <option value="commission">Commission</option>
                        <option value="salary">Salary</option>
                    </select>
                </div> 
                <div class="form-group">
                    <label for="salary">Salary</label>
                    <input type="number" class="form-control" id="salary" name="salary" placeholder="Salary"> 
                </div> 
                    <button type="submit" class="btn btn-default">Submit</button> 
                </div>   
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="salary">Photo<i>(Minimum Resolution-200x200)</i></label>
                        <input type="hidden" name="photo" id="image_name" value=" " />
                        <div class="content-wrapper" style="height:200px;">
                        <img src="{{ asset('theme1/images/user_default.png') }}" class="avatar image1" width="300" height="300">
                        <button type="button" class="edit-avatar btn btn-info">Edit</button>
                    </div> 
                </div>           
            </form>  
            </div>
        </div>	
    </div>			
</div>			
@endsection

@section('style_sheets')
<link rel="stylesheet" href="{{ asset('imgpicker/css/imgPicker.css') }}" />
@stop
@section('scripts')
<script src="{{ asset('imgpicker/js/imgPicker.js') }}"></script>
<script type="text/javascript">
jQuery(function($) {
    $('.edit-avatar').imgPicker({
    el: '.avatar',
    type: 'logo',  
    width:500,  
    minWidth: 500,
    minHeight: 500,
    title: 'Change Employee Image',
    aspectRatio:'1:1',
	api: "{{ asset('imgpicker/') }}/includes/api.php",
	});
	 $('.ip-save').click( function(){   
            net();
        });
});
function net(){             
	var val2 = $(".image1").attr('src');
	var res1 = val2.split("?");
	var res12 = res1[0].split("../files/");
	$('#image_name').val(res12[1]);	
}
</script>
@stop