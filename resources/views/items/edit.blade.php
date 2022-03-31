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
                <form action="{{ route('items.update', $item_info->item_id) }}" method="post">
                @method('PATCH')
                @csrf
                <div class="form-group">
                    <label for="item_name">Service Name</label>
                    <input type="text" class="form-control" id="item_name" name="item_name" placeholder="Service Name" value="{{ $item_info->item_name }}"> 
                </div>
                <div class="form-group">
                    <label for="item_price">Service Price</label>
                    <input type="number" class="form-control" id="item_price" name="item_price" placeholder="Service price" step="0.01" min="1" max="999999"  value="{{ $item_info->item_price }}" /> 
                </div>
                <div class="form-group"> 
                    <label for="">Description (optional)</label> 
                    <textarea name="item_description" class="form-control">{{ $item_info->item_description }}</textarea> 
                </div> 
                <div class="form-group"> 
                    <label for="item_enable">Enable</label> 
                    <input type="radio" name="item_enable" value="1" @if ( $item_info->item_enable=== 1) checked @endif /> Yes
                    <input type="radio" name="item_enable" value="0"  @if ( $item_info->item_enable=== 0) checked @endif  />No
                </div> 
                    <button type="submit" class="btn btn-default">Submit</button> 
                </form>
            </div>
            </div>
        </div>
    </div>
</div>
@endsection