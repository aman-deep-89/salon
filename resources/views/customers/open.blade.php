@extends('layouts.adminlayout')
@section('content')
<div class="row-one">    
    <div class="tables">
        <h3 class="title1">Customer List</h3>
        <div class="panel-body widget-shadow">
            <h4>Customer Statement</h4>
            <h4>Total <span id="total_text" class="btn btn-success">{{ $total ?? '' }} </span></h4>
            <div class="row">
                <div class="col-md-6">
                    Customer Name <br/><b>{{ $customer_info->customer_name }}</b>
                </div>
                <div class="col-md-6">
                    Email <br/><b>{{ $customer_info->email }}</b>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    Contact no<br/><b>{{ $customer_info->contact_no }}</b>
                </div>
                <div class="col-md-6">
                    Total Transactions <br/><b>{{ $total }}</b>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    Total Amount<br/><b>{{ $customer_info->c_total_charges }}</b>
                </div>
                <div class="col-md-6">
                    Balance <br/><b>{{ $customer_info->c_balance }}</b>
                </div>
            </div>
<table class="table table-bordered table-striped" id="laravel_datatable">
    <thead>
        <tr>
            <th>#</th><th>Date</th>
            <th>Service Detail</th><th>Serviced By</th>
            <th>Total Charges</th><th>Paid</th><th>Balance</th>
        </tr>        
    </thead> 
    <tbody>
    @php $a = 1 @endphp
        @foreach ($transaction_list as $transaction)
            <tr><td>{{$a}}</td><td>{{$transaction->t_date}}</td><td>{{ $transaction->service_desc }}</td><td>{{ $transaction->employee_name}}</td>
            <td>{{ $transaction->total_amount}}</td>
            <td>{{ $transaction->paid }}</td>
            <td>{{ $transaction->balance }}</td>           
            </tr>
            @php $a++ @endphp
        @endforeach
    </tbody>           
</table>
</div>
@endsection