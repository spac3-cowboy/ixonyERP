<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\StockOut;
use App\Models\ChallanItem;
use Auth;

class ProductController extends Controller
{
    function showAddProduct(Request $req){

         return view('pages.addProduct');

     }

    function add(Request $req){

        $userId = Auth::id();

           $newProduct = new Product();

           $newProduct->series = $req->series;
           $newProduct->title = $req->title;
           $newProduct->current_price = $req->current_price;
           $newProduct->details = $req->details;
           $newProduct->model = $req->model;
           $newProduct->brand = $req->brand;
           $newProduct->origin = $req->origin;
           $newProduct->country_of_manufacturing = $req->country_of_manufacturing;
           $newProduct->base_unit = $req->base_unit;
           $newProduct->current_stock = $req->current_stock;
           $newProduct->stock_notification_limit = $req->stock_notification_limit;
           $newProduct->created_by = $userId;

            $newProduct->save();


            return redirect('/all-product');
        }

        function allProduct(Request $req){
            $allProducts = Product::all();
            $quantity = ChallanItem::sum('quantity');

        //     $newQuantityItem = 0;
        //    foreach($quantity as $quantityItem){
        //     $newQuantityItem = $quantityItem->quantity;
        //    }

        // $quantity = ixony::table('challan_items')
        //     ->select('product_id', ixony::raw('SUM(quantity) as total_quantity'))
        //     ->groupBy('product_id')
        //     ->get();

           
         
            // $allProducts = Product::orderBy('id', 'desc')->get();
 
            return view('pages.allProduct',['products'=> $allProducts,'quantity'=> $quantity]);         
        }

        function updateProduct(Request $req, $id){

            $updateProduct = Product::find($id);
 
            return view('pages.updateProduct', ['updateProduct'=>  $updateProduct]);       
        }

        public function update(Request $req, $id)
        {
            $product = Product::find($id);

           $product->title = $req->title;
           $product->series = $req->series;
           $product->current_price = $req->current_price;
           $product->details = $req->details;
           $product->model = $req->model;
           $product->brand = $req->brand;
           $product->origin = $req->origin;
           $product->country_of_manufacturing = $req->country_of_manufacturing;
           $product->base_unit = $req->base_unit;
           $product->current_stock = $req->current_stock;
           $product->stock_notification_limit = $req->stock_notification_limit;
           $product->update();

           return redirect('all-product');

        }


        function stockIn(Request $req){
            $stockProducts = Product::all();
 
            return view('pages.stockInVoucher',['stockProducts'=> $stockProducts]); 
        }

        function stockOut(){
            $stockOutProduct = Product::all();
            return view('pages.stockOut',['stockOutProduct' => $stockOutProduct]);
        }

        

        public function stockOutInsert(Request $req){
            $stockOutProduct = $req->product_id;
            
            $newVoucher = Product::find($stockOutProduct);



            return view('pages.stockOutVoucher',['newVoucher' => $newVoucher]);
        }

        public function search(){
            $search_text = $_GET['query'];
            $products = Product::where('series','LIKE', '%'.$search_text.'%')->orWhere('brand', 'LIKE', '%' . $search_text . '%')->orWhere('title', 'LIKE', '%' . $search_text . '%')->get();

            return view('pages.search',['products' => $products]);
         }


}