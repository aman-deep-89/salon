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
                <form action="{{ url('/transactions/show_report') }}" method="post">
                @csrf
                <div class="form-group">
                <div class="col-md-4">
                 <label for="date">From</label> 
                    <input type="date" class="form-control" id="date" name="from" placeholder="Date" value="<?php echo date('Y-m-01'); ?>" />
                </div>
                <div class="col-md-4">
                <label for="untill">Untill</label> 
                    <input type="date" class="form-control" id="untill" name="untill" placeholder="Date" value="<?php echo date('Y-m-d'); ?>" />
                </div>
                <div class="col-md-4">
                    <label for="employee_id">Employee</label> 
                    {!! Form::select('employee_id', $employees, null, ['class' => 'form-control']) !!}
                </div>
                </div>
                <div class="form-group">
                    <div class="col-md-3 col-md-offset-9 text-right" style="margin-top:20px">
                        <button type="submit" class="btn btn-default">Submit</button> 
                    </div>
                </div>
                </form>                
            </div>    
        </div>	
    </div>			
</div>			
@endsection
@section('scripts')
<script type="text/javascript">
  
</script>
@stop