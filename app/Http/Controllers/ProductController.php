<?php

namespace App\Http\Controllers;


use App\Models\product;
use App\Models\catigory;
use Illuminate\Http\Request;
use App\Events\ProductUpdated;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    public function getproductStatus($id)
    {
        $product = product::find($id);
        return response()->json( $product);//_status->product_status
    }
    //
    public function index(){
        // Fetch all products from the database
       // $products = product::all();
       $categories = catigory::all();

       // Pass the categories to the view
       return view('commerce.admin.add_product', compact('categories'));
        // Pass the products to the view
        

    }
    public function store( Request $request){
        // Validate the incoming request
        $request->validate([
            'name' =>'required|max:255',
            'description' =>'required',
            'price' =>'required|numeric',
            'image-url'=>'file',
            'catigory_id' => 'required|exists:catigories,id',
        ]);

       // $imagePath = null;
      //  if ($request->hasFile('image_url')) {
            // Store the file in the 'public/cv' directory
            
                $imagePath = $request->file('image_url')->store('images', 'public');
           
            
        // Create a new product
        $product = new product;
        $product->name = $request->name;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->stock= $request->stock;
        $product->image_url = $imagePath;
        $product->catigory_id = $request->catigory_id;
        // Save the product to the database
        $product->save();

        // Redirect to the product index page
        return redirect()->route('product.index')->with('success', 'Product created successfully!');
    }
    public function show(){
        // Fetch all products from the database
        $products = product::where('stock','>',0)->get();
        // Pass the products to the view
        return view('commerce.products', compact('products'));
    }
    public function admin_show(){
        // Fetch all products from the database
        $products = product::all();
        $catigories= catigory ::all();
        // Pass the products to the view
        return view('commerce.admin.products', compact('products','catigories'));
    }
    public function viewproduct($id){
        // Fetch the product with the given ID
        $product = product::find($id);
        // Pass the product to the view
        return view('commerce.product', compact('product'));
    }

    public function edit($id){
        // Fetch the product with the given ID
        $product = product::find($id);
        // Fetch all categories from the database
        $categories = catigory::all();
        // Pass the product and categories to the view
        return view('commerce.admin.edit', compact('product', 'categories'));
    }
    public function update(Request $request, $id){
        // Validate the incoming request
        $request->validate([
            'name' =>'sometimes|max:255',
            'description' =>'sometimes',
            'price' =>'sometimes|numeric',
            'image_url'=>'sometimes|file',
            'catigory_id' => 'sometimes|exists:catigories,id',
        ]);
        $product=product::find($id);
        if ($request->price < $product->price) {
            // Dispatch the event if the product status is sold
            event(new ProductUpdated($product));
        }

        // Update the product
        $product = product::find($id);
        $product->name = $request->name;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->stock= $request->stock;
        if ($request->hasFile('image_url')) {
            if ($product->image_url) {
                Storage::disk('public')->delete($product->image_url);
            }
        // If the user uploaded a new image, store it in the 'public/cv' directory
      //  $imagePath = null;
        
            $imagePath = $request->file('image_url')->store('images', 'public');
            $product->image_url = $imagePath;
        }
        $product->catigory_id = $request->catigory_id;
        // Save the updated product to the database
        $product->save();

        // Redirect to the product index page
        return redirect()->back()->with('success', 'Product updated successfully!');
    }
  
    public function destroy($id){
        // Fetch the product with the given ID
        $product = product::find($id);
        // Delete the product from the database
        $product->delete();

        // Redirect to the product index page
        return redirect()->back()->with('success', 'Product deleted successfully!');
    }
    public function search(Request $request)
    {
        $searchTerm = $request->input('search');

        // Query the 'products' table for records where 'titre' matches the search term
        $products = product::where('name', 'LIKE', '%' . $searchTerm . '%')->get();

        // Return the view with the search results
        return view('commerce.search', ['products' => $products]);
    }
}