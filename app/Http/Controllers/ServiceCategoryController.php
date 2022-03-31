<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ServiceCategory;
class ServiceCategoryController extends Controller
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
        $services = ServiceCategory::all();
        return view('category.index',compact('services'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('category/add',['name' => 'Add Service Category', 'form_detail'=>'Category Detail']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $category = new ServiceCategory();
        $this->validate($request, [
            'category_name' => 'required',
            'category_description' => 'required'
        ]);
        $category->category_name = request('category_name');
        $category->category_description = request('category_description');
        $category->category_enable = request('category_enable');
        $category->save();
        return redirect('/category')->with('success', 'Catgeory detail saved');
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
        //
        $cat_info = ServiceCategory::where('category_id',$id)->first();        
        return view('category.edit', compact('cat_info'),['name' => 'Edit Service Category', 'form_detail'=>'Category Detail']); 
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
        //
        $this->validate($request, [
            'category_name' => 'required',
            'category_description' => 'required'
        ]);
        $category = ServiceCategory::where('category_id',$id)->first();
        $category->category_name =  $request->get('category_name');
        $category->category_description = $request->get('category_description');
        $category->category_enable = $request->get('category_enable');
        $category->save();
        return redirect('/category')->with('success', 'Catgeory updated!');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        ServiceCategory::find($id)->delete($id);  
        return redirect('/category')->with('success', 'Catgeory deleted');
        /*return response()->json([
            'success' => 'Record deleted successfully!'
        ]);*/
    }
}
