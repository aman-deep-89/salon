<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Service;
use App\ServiceCategory;
class ServiceController extends Controller
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
        //
        $services = DB::table('services')->join('service_categories','services.category_id','=','service_categories.category_id')->get();
        return view('services.index',compact('services'),['name' => 'Services List', 'form_detail'=>'Service Detail']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $cat_info = ServiceCategory::pluck('category_name', 'category_id');  
        return view('services/add',compact('cat_info'),['name' => 'Add Service', 'form_detail'=>'Service Detail']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $service = new Service();
        $this->validate($request, [
            'service_name' => 'required',
            'service_charges' => 'between:1,500',
        ]);
        $service->category_id = request('category_id');
        $service->service_name = request('service_name');
        $service->service_description = !empty(request('service_description')) ? request('service_description') : '';
        $service->service_enable = request('service_enable');
        $service->charges = request('service_charges');
        $service->save();
        return redirect('/services')->with('success', 'Catgeory detail saved');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
       /* Service::find($id)->delete($id);  
        return redirect('/services')->with('success', 'Service deleted');*/
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cat_info = ServiceCategory::pluck('category_name', 'category_id');
        $service_info = Service::where('service_id',$id)->first();
        return view('services.edit', compact('cat_info','service_info'),['name' => 'Edit Service Category', 'form_detail'=>'Category Detail']);         
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
        $service = Service::where('service_id',$id)->first();
        $service->category_id = request('category_id');
        $service->service_name = request('service_name');
        $service->service_description = request('service_description');
        $service->service_enable = request('service_enable');
        $service->charges = request('service_charges');
        $this->validate($request, [
            'service_name' => 'required',
            'service_charges' => 'between:1,500',
        ]);
        $service->save();
        return redirect('/services')->with('success', 'Services detail saved');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Service::find($id)->delete($id);  
        return redirect('/services')->with('success', 'Service deleted');
    }
}
