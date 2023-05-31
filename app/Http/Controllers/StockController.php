<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\StockInBundle;
use App\Models\StockOutBundle;
use App\Models\StockInItem;
use App\Models\StockOutBundleItem;
use App\Models\Challan;
use App\Models\User;
use App\Models\ChallanItem;
use Auth;
use Dompdf\Dompdf;
use PDF;

class StockController extends Controller
{

  public function stockInBundlePage(){
    return view('pages.stockIn');
  }

   public function stockInBundle(Request $req){

    $userId = Auth::id();
  
      $stockInBundle = new StockInBundle();

      // dd($req->all());

        $stockInBundle->title = $req->title;
        $stockInBundle->created_by = $userId;
        $stockInBundle->status = $req->status;

        $stockInBundle->save();
      //   dd($stockInBundle);

        return redirect('/stock/product/details');
   }

   public function stockInDetails(){
      $stockBundle = StockInBundle::all();

        return view('pages.stockInDetails',['stockBundle'=> $stockBundle]);
   }

   public function addProductToChallan($id){
      $challan = Challan::find($id);
      $products = Product::all();

      $challanItem = ChallanItem::with('product')->where('challan_id', $id)->get();

        return view('pages.addProductToChallan', [
          'products' => $products,
          'challan' => $challan,
          'challanItem' => $challanItem
      ]);
   }

   public function addToChallan(Request $req){

    // dd($req->all());

    $userId = Auth::id();

       $newChallanItem = new ChallanItem();

       $newChallanItem->challan_id = $req->challan_id;
       $newChallanItem->product_id = $req->product_id;
       $newChallanItem->quantity = $req->quantity;
       $newChallanItem->created_by = $userId;
       

        $newChallanItem->save();


        return redirect()->back();
    }

    public function challanItems(Request $req,$id){
      $challan = Challan::find($id);
    

      $challanItem = ChallanItem::with('product')->where('challan_id', $id)->get();
 
      return view('pages.voucherPDF', [
        // 'products' => $products,
        'challan' => $challan,
        'challanItem' => $challanItem
    ]);

    }


   public function stockInItems($id){
    $stockBundle = StockInBundle::find($id);
    $products = Product::all();

    $stockInItem = StockInItem::with('product')->where('stock_in_bundles_id', $id)->get();

      return view('pages.addItems', [
      'stockBundle' => $stockBundle,
      'products' => $products,
      'stockInItem' => $stockInItem
    ]);
 }
   

   public function addItemToStock(Request $req, $id){
    $userId = Auth::id();

      $addedItem = new StockInItem();
      $addedItem->stock_in_bundles_id = $id;
      $addedItem->product_id = $req->id;
      $addedItem->units = $req->units;
      $addedItem->price = $req->price;
      $addedItem->created_by = $userId;
      $addedItem->status = $req->status;

      $addedItem->save();

      return redirect()->back();
 }

 public function deleteItemFromStock(Request $req, $id){

  $deleteItem = StockInItem::find($id);
  

  $deleteItem->delete();

  return redirect()->back();
}

// Start from here
public function stockOutBundle(){

  return view('pages.stockOutBundle');
}

public function stockOutBundleInsert(Request $req){
  $userId = Auth::id();

  $stockOutBundle = new StockOutBundle();

    $stockOutBundle->title = $req->title;
    $stockOutBundle->created_by = $userId;
    $stockOutBundle->status = $req->status;

    $stockOutBundle->save();

    return redirect('/stock/out/details');
}

public function stockOutDetails(){
  $stockOutBundle = StockOutBundle::all();

    return view('pages.stockOutDetails',['stockOutBundle'=> $stockOutBundle]);
}

public function stockOutBundleDetails(){
  return view('pages.stockOutBundleDetails');
}

public function stockOutItems($id){
  // dd($id);
  $stockBundle = StockOutBundle::find($id);
  $products = Product::all();

  $stockOutItem = StockOutBundleItem::with('product')->where('stock_out_bundles_id', $id)->get();

    return view('pages.stockOutBundleDetails', [
    'stockBundle' => $stockBundle,
    'products' => $products,
    'stockOutItem' => $stockOutItem
  ]);
}

public function stockOutItemToStock(Request $req, $id){
  $userId = Auth::id();

  $stockOutItem = new StockOutBundleItem();
  $stockOutItem->stock_out_bundles_id = $id;
  $stockOutItem->product_id = $req->id;
  $stockOutItem->units = $req->units;
  $stockOutItem->price = $req->price;
  $stockOutItem->created_by = $userId;
  $stockOutItem->status = $req->status;

  $stockOutItem->save();

  return redirect()->back();
}

public function deleteItemFromStockOut(Request $req, $id){

  $deleteItem = StockOutBundleItem::find($id);
  

  $deleteItem->delete();

  return redirect()->back();
}

public function stockOutChallanPage(){
  $stockOut = StockOutBundle::all();
            
  return view('pages.makeChallan', ['stockOut'=> $stockOut]);
}

public function stockOutChallanInsert(Request $req){

  // $date = new \DateTime();

  $num = session()->get('num', 3000);
  $num++;
  session()->put('num', $num);


  // $challan_number = 'IEL' . $date->format('m') . $date->format('d') . $date->format('Y') . $num;

  $userId = Auth::id();

  $challan_number = Challan::all();
  // dd($challan_number);
  // $find_challan_number = $challan_number->number;
  // dd($find_challan_number);

  // if($find_challan_number === $num){
  //   $challan_number++;
  // }

  $stockOutChallan = new Challan();

  $stockOutChallan->company_address = $req->company_address;
  $stockOutChallan->stock_out_bundle_id = $req->stock_out_bundle_id;
  $stockOutChallan->number = $num;
  $stockOutChallan->work_order_number = $req->work_order_number;
  $stockOutChallan->work_order_date = $req->work_order_date;
  $stockOutChallan->created_by = $userId;
  $stockOutChallan->status = $req->status;

  $stockOutChallan->save();
  return redirect('/stock/out/voucher');
}

public function stockOutVoucher(){

  $meow = StockOutBundleItem::all();
  
  $challan = Challan::orderBy('id', 'desc')->get();

  // dd($challan->stock_out_bundle_id);
  // if ($meow->stock_out_bundle_id == $challan->stock_out_bundle_id) {
    
  // }

  return view('pages.stockOutVoucher', ['challan'=>$challan]);
            
}

public function generatePDF()
    {

        $data = Challan::orderBy('id', 'desc')->get();
        $dompdf = new Dompdf();

        $dompdf->loadHtml(view('pages.voucherPDF', ['data'=>$data]));
        $dompdf->setPaper('A4', 'potrait');
        $dompdf->render();

        return $dompdf->stream('pages.voucherPDF');
    }

    // public function pdfPage(){
    //   return view('pages.voucherPDF');
    // }

}