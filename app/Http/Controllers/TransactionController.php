<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use DataTables;
use App\Items;
use App\Employee;
use App\Services;
use App\ServiceCategory;
use App\Transaction;
use App\Customer;
use App\MaterialDetail;
use App\ServiceDetail;
class TransactionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $transactions = DB::table('transactions')->join('service_details','service_details.transaction_id','=','transactions.transaction_id')->leftJoin('material_details','material_details.transaction_id','=','transactions.transaction_id')->join('services','services.service_id','=','service_details.service_id')->join('employees','employees.employee_id','=','transactions.employee_id')->join('customers','customers.customer_id','=','transactions.customer_id')->select('*',DB::raw('DATE_FORMAT(transaction_date, "%d-%m-%Y") as t_date,transactions.transaction_id AS tid'),DB::raw('GROUP_CONCAT(service_name,"- Rs.",service_charges) AS service_desc'))->groupBy(DB::raw('transactions.transaction_id'))->orderBy(DB::raw('transactions.transaction_date'),'DESC')->limit(10)->get();
        return view('transactions.index',compact('transactions'),['name' => 'transactions List', 'form_detail'=>'Transaction Detail']);        
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $employees =Employee::pluck('employee_name', 'employee_id');  
        $items = Items::pluck('item_name', 'item_id');
        //$services =Services::pluck('service_name', 'service_id');
        $service_info = ServiceCategory::with('services')->get();
        return view('transactions/add',compact('employees','items','service_info'),['name' => 'Add Transactions', 'form_detail'=>'Transactions Detail']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {        
        /*$validatedData = $request->validate([
            'employee_id' => 'required',
            'date' => 'required',
             => 'required',            
        ]);*/
       // echo $request->customer_id; exit;
       $messages=['services.*.service_id.required' =>'Please select service',                     
       'services.*.service_charges.required'=>'Please enter service charges'];
        $v=Validator::make($request->all(), [
            'employee_id' => 'required|exists:employees',
            'date' => 'required',  
            'services.*.service_id' => 'required',                     
            'services.*.service_charges' => 'required|numeric',                     
        ],$messages);
        $v->sometimes(['customer_name','contact_no'], 'required|max:50', function ($input) {
            return empty($input->customer_id);
        });
        if ($v->fails()) {
            return redirect('transactions/create')
                        ->withErrors($v)
                        ->withInput();
        }       
        /*$validatedData = $request->validate([
            'customer_name' => 'required|max:255',
            'contact_no' => 'required',
            'contact_no' => 'required',
        ]);*/
        if(empty($request->customer_id)) {
        DB::table('customers')->insert([
            'customer_name' => request('customer_name'),
            'contact_no' => request('contact_no'),
            'email_id' => request('email_id'),
            'package' => request('package'),
        ]);
        $customer_id = DB::getPdo()->lastInsertId();;
        } else $customer_id=$request->customer_id;
        $cust_model=Customer::where('customer_id',$customer_id)->first();
        $cust_model->c_total_charges +=request('total');
        $cust_model->c_total_paid +=request('paid');
        $cust_model->c_balance =request('balance');
        $cust_model->save();
        /*DB::table('customers')->where('customer_id',$customer_id)->update([
            'c_total_charges' => request('customer_name'),
            'c_total_paid' => request('contact_no'),
            'c_balance' => request('email_id'),
        ]);*/
        DB::table('transactions')->insert([
            'transaction_date' => request('date'),
            'customer_id' => $customer_id,
            'employee_id' => request('employee_id'),
            'total_charges' => request('total'),
            'previous_balance' => request('old_balance'),
            'total_amount' => request('grand_total'),
            'paid' => request('paid'),
            'balance' => request('balance'),
            'entered_by'=>Auth::id(),
        ]);
        $transaction_id = DB::getPdo()->lastInsertId();
        //$customer_id=$transaction_id=1;
        $material=request('items');
        if(isset($material)) {
            foreach($material as $v) {
                DB::table('material_details')->insert([
                    'transaction_id' => $transaction_id,
                    'item_id' => $v['item_id'],
                    'quantity_used' => $v['item_quantity']            
                ]);  
            }
        }
        $services=request('services');
        foreach($services as $v) {
            DB::table('service_details')->insert([
                'transaction_id' => $transaction_id,
                'service_id' => $v['service_id'],
                'service_charges' => $v['service_charges'],                        
                'service_by' => $v['service_by'],                        
            ]);
        }
        return redirect('/transactions')->with('success', 'Transaction detail saved successfully');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $employees =Employee::pluck('employee_name', 'employee_id');  
        $items = Items::pluck('item_name', 'item_id');
        //$services =Services::pluck('service_name', 'service_id');
        $service_info = ServiceCategory::with('services')->get();    
        //DB::enableQueryLog(); 
        $transaction_info = Transaction::where('transactions.transaction_id',$id)->leftJoin('service_details','service_details.transaction_id','=','transactions.transaction_id')->leftJoin('material_details','material_details.transaction_id','=','transactions.transaction_id')->leftJoin('services','services.service_id','=','service_details.service_id')->join('employees','employees.employee_id','=','transactions.employee_id')->join('customers','customers.customer_id','=','transactions.customer_id')->select('*',DB::raw('transactions.transaction_id AS tid'),DB::raw('GROUP_CONCAT(DISTINCT service_detail_id,"-",service_details.service_id,"-",service_charges,"-",service_by) AS service_desc'),DB::raw('GROUP_CONCAT(DISTINCT material_detail_id,"-",item_id,"-",quantity_used) AS material_desc'))->groupBy(DB::raw('transactions.transaction_id'))->first();
        //print_r($transaction_info); exit;
        $customer_id=$transaction_info->customer_id;
        $new_transaction_info = Transaction::where('transactions.transaction_id','>',$id)->where('transactions.customer_id','=',$customer_id)->count();
        $transaction_count = ($new_transaction_info!=null) ? $new_transaction_info : 0;
        return view('transactions.edit', compact('employees','items','service_info','transaction_info','transaction_count'),['name' => 'Edit Transaction', 'form_detail'=>'Transaction Detail']); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'customer_name' => 'required|max:255',
            'contact_no' => 'required',
            'contact_no' => 'required',
        ]);
        $transaction = Transaction::where('transaction_id',$id)->first();
        DB::table('customers')->where('customer_id',$transaction->customer_id)->update([
            'customer_name' => request('customer_name'),
            'contact_no' => request('contact_no'),
            'email_id' => request('email_id'),
            'package' => request('package'),
        ]);
        DB::table('transactions')->where('transaction_id',$transaction->transaction_id)->update([
            'transaction_date' => request('date'),
            'employee_id' => request('employee_id'),
            'total_amount' => request('total'),
            'paid' => request('paid'),            
            'balance' => request('balance'),
        ]);
        $transaction_id =$id;
        //$customer_id=$transaction_id=1;
        MaterialDetail::where('transaction_id',$id)->delete();  
        ServiceDetail::where('transaction_id',$id)->delete();  
        $material=request('items');
        //print_r($material); exit;
        foreach($material as $v) {
            DB::table('material_details')->insert([
                'transaction_id' => $transaction_id,
                'item_id' => $v['item_id'],
                'quantity_used' => $v['item_quantity']            
            ]);  
        }
        $services=request('services');
        foreach($services as $v) {
            DB::table('service_details')->insert([
                'transaction_id' => $transaction_id,
                'service_id' => $v['service_id'],
                'service_charges' => $v['service_charges'],                        
                'service_by' => $v['service_by'],                        
            ]);
        }
        return redirect('/transactions')->with('success', 'Transaction detail saved successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {   
        $transaction_info = Transaction::where('transactions.transaction_id',$id)->first();
        $total=$transaction_info->total_charges;
        $paid=$transaction_info->total_paid;
        $balance=$transaction_info->balance;
        $cust_model=Customer::where('customer_id',$transaction_info->customer_id)->first();
        $cust_model->c_total_charges -=$total;
        $cust_model->c_total_paid -=$paid;
        $cust_model->c_balance -=$balance;
        $cust_model->save();
        MaterialDetail::where('transaction_id',$id)->delete();  
        ServiceDetail::where('transaction_id',$id)->delete();          
        Transaction::where('transaction_id',$id)->delete();    
        return redirect('/transactions')->with('success', 'Transaction deleted successfully');  
    }
    public function report()
    {        
        $employees = Employee::pluck('employee_name', 'employee_id');
        $employees->prepend('All','all');
        //print_r($employees);
        $items = Items::pluck('item_name', 'item_id');
        //$services =Services::pluck('service_name', 'service_id');
        $service_info = ServiceCategory::with('services')->get();
        return view('transactions/select_month',compact('employees','items','service_info'),['name' => 'Transactions Report', 'form_detail'=>'Transactions Report']);
    }
    public function show_report(Request $request) {
        $from=empty(request('from')) ? date('Y-m-01') : request('from');
        $untill=empty(request('untill')) ? date('Y-m-d') : request('untill');
        $employee_id=request('employee_id');
        $dates=array('from'=>$from,'untill'=>$untill);
        return view('transactions/show_report',compact('dates','employee_id'),['name' => 'Transactions Report', 'form_detail'=>'Transactions Report']);
    }
    public function get_ajax_report_data(Request $request) {
        $from=empty(request('from')) ? date('Y-m-01') : request('from');
        $untill=empty(request('untill')) ? date('Y-m-d') : request('untill');
        $employee_id=request('employee_id');
        $str='';
        if($employee_id!='all' && !empty($employee_id)) $str=" AND employee_id='$employee_id'";       
       // $str=[['transaction_date','>=',$from],['transaction_date','<=',$untill]];        
        //if($employee_id!='all') $str.=["employee_id",'=',$employee_id];
        //echo "SELECT *,DATE_FORMAT(transaction_date,'%d-%m-%Y') AS t_date,GROUP_CONCAT(service_name,'- Rs.',service_charges) AS service_desc,employee_name AS `action` FROM transactions JOIN employees USING(employee_id) JOIN customers USING(customer_id) LEFT JOIN service_details USING(transaction_id) LEFT JOIN services USING(service_id) LEFT JOIN material_details USING(transaction_id)  WHERE transaction_date>= '$from' AND transaction_date<='$untill' $str GROUP BY transaction_id";
        $search  = $request->input('search.value');            
        $count_total = \DB::table('transactions')->where('transaction_date','>=',$from)->where('transaction_date','<=',$untill)->count();
        $count_filter = \DB::table('transactions') ->join('employees', 'employees.employee_id', '=', 'transactions.employee_id') ->join('customers', 'transactions.customer_id', '=', 'customers.customer_id')->where('transaction_date','>=',$from)->where('transaction_date','<=',$untill) ->where(function ($query) use ($search) {
            $query->where('customers.customer_name', 'LIKE', '%' . $search . '%')
                ->orWhere('employees.employee_name', 'LIKE', '%' . $search . '%');
         })->count();
        $results = DB::select( DB::raw("SELECT *,DATE_FORMAT(transaction_date,'%d-%m-%Y') AS t_date,GROUP_CONCAT(service_name,'- Rs.',service_charges) AS service_desc,employee_name AS `action` FROM transactions JOIN employees USING(employee_id) JOIN customers USING(customer_id) LEFT JOIN service_details USING(transaction_id) LEFT JOIN services USING(service_id) LEFT JOIN material_details USING(transaction_id)  WHERE transaction_date>= '$from' AND transaction_date<='$untill' AND (customers.customer_name LIKE '%".$search."%' OR employees.employee_name LIKE '%".$search."%') $str GROUP BY transaction_id"));
         /*   $results = DB::table('transactions')
        ->join('employees', 'employees.employee_id', '=', 'transactions.employee_id')
        ->join('customers', 'transactions.customer_id', '=', 'customers.customer_id')
        ->leftJoin('service_details', 'transactions.transaction_id', '=', 'service_details.transaction_id')
        ->leftJoin('services', 'service_details.service_id', '=', 'services.service_id')
        ->leftJoin('material_details', 'transactions.transaction_id', '=', 'material_details.transaction_id')
        ->select(DB::raw("transactions.transaction_id AS tid,DATE_FORMAT(transaction_date,'%d-%m-%Y') AS t_date,GROUP_CONCAT(service_name,'- Rs.',service_charges) AS service_desc"))
        ->select(DB::raw("transactions.transaction_id AS tid"))
        ->where($str)     
        ->groupBy('transactions.transaction_id')->orderBy('transactions.transaction_id');
        //->paginate(20);        */
       /* if($employee_id!='all') $results->where('employee_id','=',$employee_id);
        $results->paginate(20);*/
        //print_r($results); exit;
        $dates=array('from'=>$from,'untill'=>$untill);
        $total=0;
        $total_paid = DB::select( DB::raw("SELECT SUM(paid) AS total_paid FROM transactions  JOIN employees USING(employee_id) JOIN customers USING(customer_id) WHERE transaction_date>= '$from' AND transaction_date<='$untill' AND (customers.customer_name LIKE '%".$search."%' OR employees.employee_name LIKE '%".$search."%') $str"));
        $total=$total_paid[0]->total_paid;
        return DataTables::of($results)->addIndexColumn()->addColumn('action', function ($results) {
            return '<a href="'.route('transactions.edit',$results->transaction_id).'" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-edit"></i> Edit</a> <a href="'.url('transactions/print_invoice',$results->transaction_id).'" class="btn btn-xs btn-info" target="blank"><i class="glyphicon glyphicon-print"></i> Print Invoice</a> <a href="#" data-toggle="modal" onclick="deleteData('.$results->transaction_id.')"  data-target="#DeleteModal" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
        })->with([ "recordsTotal" => $count_total, "recordsFiltered" => $count_filter,'total'=>$total ]) ->rawColumns(['t_date','customer_name','service_desc','total_amount','balance','action'])->make(true); 
    }  
    function search_customer(Request $request) {
        $search_str=empty(request('term')) ? null : request('term');
        $transaction_id=empty(request('transaction_id')) ? null : request('transaction_id');
        //DB::enableQueryLog(); 
        if($transaction_id==null)
            $data=Customer::query()->select(DB::raw("CONCAT(customer_name,'-',contact_no) AS label,customers.customer_id AS id,customer_name AS value,c_balance AS pending"))->where('customer_name', 'LIKE', "%{$search_str}%")->orWhere('contact_no', 'LIKE', "%{$search_str}%")->leftJoin('transactions','transactions.customer_id','=','customers.customer_id')->groupBy('customers.customer_id')->get();
        else 
            $data=Customer::query()->select(DB::raw("CONCAT(customer_name,'-',contact_no) AS label,customers.customer_id AS id,customer_name AS value,IF(previous_balance>0,previous_balance,c_balance) AS pending"))->where('customer_name', 'LIKE', "%{$search_str}%")->orWhere('transaction_id','=',$transaction_id)->orWhere('contact_no', 'LIKE', "%{$search_str}%")->leftJoin('transactions','transactions.customer_id','=','customers.customer_id')->groupBy('customers.customer_id')->orderBy('transaction_id','DESC')->get();
        //dd(DB::getQueryLog());
        echo $data->toJson(JSON_PRETTY_PRINT);
        exit;
    } 
    function print_invoice(Request $request) {
        $id=request()->route('id');
        $employees =Employee::pluck('employee_name', 'employee_id');  
        $items = Items::pluck('item_name', 'item_id');
        //$services =Services::pluck('service_name', 'service_id');
        $service_info = ServiceCategory::with('services')->get();        
        $transaction_info = Transaction::where('transactions.transaction_id',$id)->leftJoin('service_details','service_details.transaction_id','=','transactions.transaction_id')->leftJoin('material_details','material_details.transaction_id','=','transactions.transaction_id')->leftJoin('services','services.service_id','=','service_details.service_id')->join('employees','employees.employee_id','=','transactions.employee_id')->join('customers','customers.customer_id','=','transactions.customer_id')->select('*',DB::raw('transactions.transaction_id AS tid'),DB::raw('GROUP_CONCAT(DISTINCT service_detail_id,"-",service_details.service_id,"-",service_charges,"-",service_by) AS service_desc'),DB::raw('GROUP_CONCAT(DISTINCT material_detail_id,"-",item_id,"-",quantity_used) AS material_desc'))->groupBy(DB::raw('transactions.transaction_id'))->first();
        //print_r($transaction_info); exit;
        return view('transactions.print_invoice', compact('employees','items','service_info','transaction_info'),['name' => 'Print Invoice']); 

    } 
}
