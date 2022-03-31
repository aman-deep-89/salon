<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use DataTables;
use App\Customer;
use App\Transaction;

class CustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        //$customers = DB::table('customers')->leftJoin('transactions','customers.customer_id','=','transactions.customer_id')->select('*',DB::raw('COUNT(transaction_id) AS total_trans'))->groupBy(DB::raw('customers.customer_id'))->orderBy(DB::raw('customers.customer_id'),'DESC')->limit(10)->get();
        return view('customers.index',['name' => 'Customer List', 'form_detail'=>'Customer Detail']);
    }
    public function get_ajax_report_data(Request $request) {
        $search  = $request->input('search.value');            
        $count_total = \DB::table('customers')->count();
        $count_filter = \DB::table('customers')->where(function ($query) use ($search) {
            $query->where('customers.customer_name', 'LIKE', '%' . $search . '%')
                ->orWhere('customers.contact_no', 'LIKE', '%' . $search . '%');
         })->count();
        $results = DB::select( DB::raw("SELECT *,COUNT(transaction_id) AS total_trans FROM customers LEFT JOIN transactions USING(customer_id) WHERE customers.customer_name LIKE '%".$search."%' OR customers.contact_no LIKE '%".$search."%' GROUP BY customer_id"));
        $total=0;
        $total_paid = DB::select( DB::raw("SELECT SUM(c_balance) AS total_balance FROM customers"));
        $total=$total_paid[0]->total_balance;
        return DataTables::of($results)->addIndexColumn()->addColumn('action', function ($results) {
            return '<a href="'.route('customers.show',$results->customer_id).'" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-folder-open"></i> Open</a><a href="#" data-toggle="modal" onclick="deleteData('.$results->customer_id.')"  data-target="#DeleteModal" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
        })->with([ "recordsTotal" => $count_total, "recordsFiltered" => $count_filter,'total'=>$total ]) ->rawColumns(['customer_name','contact_no','email_id','c_total_charges','c_balance','action'])->make(true); 
    }
    public function edit() {

    }
    public function show($id) {
        //DB::enableQueryLog(); 
        $transaction_info = Transaction::where('transactions.customer_id',$id);
        $total=$transaction_info->count();
        //print_r($transaction_info);
        $transaction_list = Transaction::where('transactions.customer_id',$id)->orderBy('transaction_date')->leftJoin('service_details','service_details.transaction_id','=','transactions.transaction_id')->leftJoin('services','services.service_id','=','service_details.service_id')->join('employees','employees.employee_id','=','transactions.employee_id')->select('*',DB::raw('transactions.transaction_id AS tid'),DB::raw('GROUP_CONCAT(service_name) AS service_desc'),DB::raw('DATE_FORMAT(transactions.transaction_date,"%d-%b-%Y") AS t_date'))->groupBy(DB::raw('transactions.transaction_id'))->orderBy('transaction_date')->get();
        //dd(DB::getQueryLog());
        $customer_info = Customer::where('customers.customer_id',$id)->first();
        return view('customers.open',compact('transaction_list','customer_info','total'),['name' => 'Customer List', 'form_detail'=>'Customer Detail']);
    }
    public function destroy($id)
    {   
        $transaction_info = Transaction::where('transactions.customer_id',$id)->count();
        //echo $transaction_info; exit;
        if($transaction_info==0) {
            Customer::where('customer_id',$id)->delete();
            return redirect('/customers')->with('success', 'Transaction deleted successfully');
        } else {
            return redirect('/customers')->with('error', 'This customer has some transactions');
        }
    }
}
