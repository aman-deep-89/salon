<html>
    <head>
    <title>{{ config('app.name') }}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Stock Management App" />
        <!-- Bootstrap Core CSS -->
        <link href="{{ asset('theme1/css/bootstrap.css') }}" rel='stylesheet' type='text/css' />
        <!-- Custom CSS -->
        <link href="{{ asset('theme1/css/report_style.css') }}" rel='stylesheet' type='text/css' />
    </head>
    <body>
        <div class="container bill_container">
            <div class="row">
                <div class="col-12 text-center"><h3>Invoice</h3></div>
                <div class="row">
                <div class="col-md-6">
                    To <br/>
                    {{$transaction_info->customer_name}}<br/>
                    {{$transaction_info->contact_no}}<br/>
                    {{$transaction_info->email_id}}
                </div>
                <div class="col-md-6">
                    From:
                        Company Name<br/>
                        Company Address<br/>
                        Contact Info<br/> 
                </div>
                </div>
                <div class="col-12">
                    <table class="table table-bordered">
                    <tr class="btn-secondary"><td colspan="4"><h5>Material Used</h5></td></tr>
                        <tr><td>Sr.No</td><td>Material Name</td><td colspan="2">Quantity Used</td></tr>
                        <tbody><?php
                        $material=explode(',',$transaction_info->material_desc);                         
                        $k=1;                                              
                        if(isset($material[0]) && ($material[0])!='') {
                            foreach($material as $s) {                                 
                                $detail=explode('-',$s); ?>
                        <tr>
                            <td>
                                <?php echo ($k); ?></label>
                            </td>
                            <td class='type'>
                                <?php echo $items[$detail[1]]; ?>
                            </td>
                            <td class='quantity'colspan="2">
                                <?php echo $detail[2]; ?>
                            </td>	                           		
                        </tr>
                        <?php $k++; } } ?></tbody>
                   <tr class="btn-secondary"><th colspan="4"><h5>Services Availed</h5></th></tr>
                    <tr><td>Sr.No</td><td>Service Name</td><td>Charges</td><td>Serviced By</td></tr>
                        <?php                                                 
                        $i=1;
                        $services=explode(',',$transaction_info->service_desc); 
                        if(isset($services[0]) && ($services[0])!='') {
                            foreach($services as $s) {                                 
                                $detail=explode('-',$s); ?>
                                <tr>
                                    <td>
                                        <?php echo ($i); ?>
                                    </td>
                                    <td class='type'>
                                    @foreach ($service_info as $service)
                                        @foreach ($service->services as $service_detail)
                                            <?php if($detail[1]==$service_detail->service_id) 
                                            echo $service_detail->service_name
                                            ?>
                                        @endforeach
                                        </optgroup>
                                        @endforeach
                                    </td>
                                    <td class='charges'>
                                        <?php echo $detail[2]; ?>
                                    </td>
                                    <td class='type'>
                                    <?php echo $employees[$detail[3]]; ?>
                                    </td>	                                    		
                                </tr>
                        <?php $i++; } }
                        ?>  
                        <tr><th colspan="3" class="text-right">Total</th><th>Rs. {{$transaction_info->total_amount}}</th></tr>                                                
                        <tr><th colspan="3" class="text-right">Paid</th><th>Rs. {{$transaction_info->paid}}</th></tr>                                                
                        <tr><th colspan="3" class="text-right">Balance</th><th>Rs. {{$transaction_info->balance}}</th></tr>                                                
                        </tbody>
                    </table>
                </div>                
            </div>
            <div class="text-center col-md-12"><a href="#" onClick="window.print()" class="btn btn-primary"><i class="fa fa-print"></i> Print</a><div>
        </div>        
    </body>
</html>