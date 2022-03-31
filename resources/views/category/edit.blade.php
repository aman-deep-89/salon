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
                <form action="{{ route('category.update', $cat_info->category_id) }}" method="post">
                @method('PATCH') 
                @csrf
                <div class="form-group"> <label for="service_category">Service Category</label> <input type="text" class="form-control" id="service_category" name="category_name" value="{{ $cat_info->category_name }}" placeholder="Category (e.g. hair, makeup)"> </div> 
                <div class="form-group"> 
                    <label for="exampleInputPassword1">Description (optional)</label> 
                    <textarea name="category_description" class="form-control">{{ $cat_info->category_description }}</textarea> </div> 
                <div class="form-group"> 
                    <label for="exampleInputPassword1">Enable</label> 
                    <input type="radio" name="category_enable" value="1" checked/>Yes 
                    <input type="radio" name="category_enable" value="0" />No
                </div> 
                    <button type="submit" class="btn btn-default">Submit</button> 
                </form>                
            </div>
        </div>	
    </div>			
</div>			
@endsection				