<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Employee;

class EmployeeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        //
        $employees = DB::table('employees')->get();
        return view('employees.index',compact('employees'),['name' => 'Employee List', 'form_detail'=>'Employee Detail']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('employees/add',['name' => 'Add Employee', 'form_detail'=>'Employee Detail']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $employees = new Employee();
        $this->validate($request, [
            'employee_name' => 'required',
            'contact_no' => 'required',
            'salary_type' => 'required',
            'salary' => 'between:1,50000',
        ]);
        $employees->employee_name = request('employee_name');
        $employees->birth_date = request('birth_date');
        $employees->contact_no = request('contact_no');
        $employees->photo = request('photo');
        $employees->designation = request('designation');
        $employees->salary_type = request('salary_type');
        $employees->salary = request('salary');
        $employees->save();
        return redirect('/employees')->with('success', 'Employee detail saved');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        /*Service::find($id)->delete($id);  
        return redirect('/items')->with('success', 'Item deleted successfully');*/
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $employee_info = Employee::where('employee_id',$id)->first();
        return view('employees.edit', compact('employee_info'),['name' => 'Edit Employee', 'form_detail'=>'Employee Detail']);
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
        $employee = Employee::where('employee_id',$id)->first();
        $this->validate($request, [
            'employee_name' => 'required',
            'contact_no' => 'required',
            'salary_type' => 'required',
            'salary' => 'between:1,50000',
        ]);
        $employee->employee_name = request('employee_name');
        $employee->birth_date = request('birth_date');
        $employee->contact_no = request('contact_no');
        $employee->photo = request('photo');
        $employee->designation = request('designation');
        $employee->salary_type = request('salary_type');
        $employee->salary = request('salary');        
        $employee->save();
        return redirect('/employees')->with('success', 'Employee detail saved');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Employee::find($id)->delete($id);  
        return redirect('/employees')->with('success', 'Employee deleted successfully');
    }
}
