<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Items;

class ItemsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $items = DB::table('items')->get();
        return view('items.index',compact('items'),['name' => 'Item List', 'form_detail'=>'Item Detail']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('items/add',['name' => 'Add Item', 'form_detail'=>'Item Detail']);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $items = new Items();
        $this->validate($request, [
            'item_name' => 'required',           
            'item_price' => 'between:1,500',
        ]);
        $items->item_name = request('item_name');
        $items->item_description = !empty(request('item_description')) ? request('item_description') : "";
        $items->item_enable = request('item_enable');
        $items->item_price = request('item_price');
        $items->save();
        return redirect('/items')->with('success', 'Item detail saved');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        Service::find($id)->delete($id);  
        return redirect('/items')->with('success', 'Item deleted successfully');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item_info = Items::where('item_id',$id)->first();
        return view('items.edit', compact('item_info'),['name' => 'Edit Item', 'form_detail'=>'Item Detail']);
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
        $item = Items::where('item_id',$id)->first();
        $item->item_name = request('item_name');
        $item->item_description = request('item_description');
        $item->item_enable = request('item_enable');
        $item->item_price = request('item_price');
        $this->validate($request, [
            'item_name' => 'required',
            'item_price' => 'between:1,500',
        ]);
        $item->save();
        return redirect('/items')->with('success', 'Item detail saved');
    }
    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Items::find($id)->delete($id);  
        return redirect('/items')->with('success', 'Item deleted successfully');
    }
}
