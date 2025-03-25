<?php

namespace App\Http\Controllers;

use App\Models\catigory;
use Illuminate\Http\Request;

class CatigoryController extends Controller
{
    public function index(){
       
        return view('commerce.admin.add_cat');
    }
    public function store(Request $request){
        $request->validate([
            'name' =>'required|unique:catigories,name|max:255',
            'description' =>'required',
        ]);
        
        $category = new catigory;
        $category->name = $request->name;
        $category->description = $request->description;
        $category->save();

        return redirect()->route('catigory.index')->with('success','Category added successfully');
    }
    public function edit($id){
        $catigory = catigory::find($id);
        return view('commerce.admin.edit_cat', compact('catigory'));
    }
    public function update(Request $request, $id){
        $request->validate([
            'name' =>'sometimes|unique:catigories,name,'.$id.'|max:255',
            'description' =>'sometimes',
        ]);
        
        $category = catigory::find($id);
        $category->name = $request->name;
        $category->description = $request->description;
        $category->save();

        return redirect()->back()->with('success','Category updated successfully');
    
}
public function destroy($id){
    $category = catigory::find($id);
    $category->delete();

    return redirect()->back()->with('success','Category deleted successfully');

}
}