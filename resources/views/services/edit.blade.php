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
                <form action="{{ route('services.update', $service_info->service_id) }}" method="post">
                @method('PATCH')
                @csrf
                <div class="form-group"> 
                    <label for="service_category">Service Category</label> 
                    <div class="form-group">
                        {!! Form::Label('category_id', 'Category') !!}
                        {!! Form::select('category_id', $cat_info, $service_info->category_id, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="form-group">
                    <label for="service_name">Service Name</label>
                    <input type="text" class="form-control" id="service_category" name="service_name" placeholder="Service Name" value="{{ $service_info->service_name }}"> 
                </div>
                <div class="form-group">
                    <label for="service_charges">Service Charges</label>
                    <input type="number" class="form-control" id="service_charges" name="service_charges" placeholder="Service Charges" step="0.0" min="1" max="999999"  value="{{ $service_info->charges }}" /> 
                </div>
                <div class="form-group"> 
                    <label for="">Description (optional)</label> 
                    <textarea name="service_description" class="form-control">{{ $service_info->service_description }}</textarea> 
                </div> 
                <div class="form-group"> 
                    <label for="service_enable">Enable</label> 
                    <input type="radio" name="service_enable" value="1" @if ( $service_info->service_enable=== 1) checked @endif /> Yes
                    <input type="radio" name="service_enable" value="0"  @if ( $service_info->service_enable=== 0) checked @endif  />No
                </div> 
                    <button type="submit" class="btn btn-default">Submit</button> 
                </form>                
            </div>               
            </div>
        </div>
    </div>
</div>
@endsection