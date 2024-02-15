<?php

namespace App\services;

use App\Models\Challan;
use App\Models\ChallanCancel;
use App\Models\ChallanCancelProduct;
use App\Models\ChallanInfo;
use App\Models\ChallanProduct;
use App\Models\Product;
use App\Models\TransactionBundle;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class ChallanService
{
    private $productId, $quantity, $date, $customerName, $challanNo, $deliveryLocation, $contactPerson, $contactNumber, $status, $workOrderNo, $returnable, $bundleId;

    public function challan()
    {
        $challan = ChallanInfo::all();
        return $challan;
    }

    public function setProduct($value)
    {
        $this->productId = $value;
        return $this;
    }

    public function setQuantity($value)
    {
        $this->quantity = $value;
        return $this;
    }


    public function setDate($value)
    {
        $this->date = $value;
        return $this;
    }


    public function setReturnable($value)
    {
        $this->returnable = $value;
        return $this;
    }


    public function setCustomerName($value)
    {
        $this->customerName = $value;
        return $this;
    }


    public function setChallanNo($value)
    {
        $this->challanNo = $value;
        return $this;
    }


    public function setBundleId($value)
    {
        $this->bundleId = $value;
        return $this;
    }


    public function setDeliveryLocation($value)
    {
        $this->deliveryLocation = $value;
        return $this;
    }



    public function setContactPerson($value)
    {
        $this->contactPerson = $value;
        return $this;
    }


    public function setContactNumber($value)
    {
        $this->contactNumber = $value;
        return $this;
    }


    public function setWorkOrderNo($value)
    {
        $this->workOrderNo = $value;
        return $this;
    }


    public function setStatus($value)
    {
        $this->status = $value;
        return $this;
    }

    public function product()
    {
        $products = Product::all();
        return $products;
    }


    public function challanProductList($bundleId)
    {
        $challanProducts = ChallanProduct::where('bundle_id', $bundleId)->get();
        return $challanProducts;
    }


    public function save()
    {
        $bundleId = 'challan' . '-' . rand(111111, 99999999);

        $challan = new ChallanInfo();

        $challan->date = $this->date;
        $challan->created_by = Auth::id();
        $challan->bundle_id = $bundleId;
        $challan->customer_name = $this->customerName;
        $challan->challan_no = $this->challanNo;
        $challan->delivery_location = $this->deliveryLocation;
        $challan->contact_person = $this->contactPerson;
        $challan->contact_number = $this->contactNumber;
        $challan->work_order_no = $this->workOrderNo;
        $challan->returnable = $this->returnable;
        $challan->created_at = Carbon::now();
        $challan->save();



        // insert data into transactions
        $transaction = new TransactionBundle();
        $transaction->type = 'Challan';
        $transaction->bundle_id = $bundleId;
        $transaction->date = Carbon::now();
        $transaction->save();
    }



    public function update($id)
    {

        $challan = ChallanInfo::findOrFail($id);

        $challan->date = $this->date;
        $challan->created_by = Auth::id();
        $challan->customer_name = $this->customerName;
        $challan->challan_no = $this->challanNo;
        $challan->delivery_location = $this->deliveryLocation;
        $challan->contact_person = $this->contactPerson;
        $challan->contact_number = $this->contactNumber;
        $challan->work_order_no = $this->workOrderNo;
        $challan->returnable = $this->returnable;
        $challan->created_at = Carbon::now();
        $challan->update();
    }


    public function edit($id)
    {
        $challan = ChallanInfo::findOrFail($id);
        return $challan;
    }


    public function changeStatus($id)
    {
        $challan = ChallanInfo::findOrFail($id);
        $challan->status = $this->status;
        $challan->save();
    }



    // challan product

    public function challanProduct()
    {

        if (ChallanProduct::where('product_id', $this->productId)->where('bundle_id', $this->bundleId)->exists()) {
            ChallanProduct::where('product_id', $this->productId)->where('bundle_id', $this->bundleId)->increment('quantity', $this->quantity);

            // stock manage
            Product::where('id', $this->productId)->decrement('current_stock', $this->quantity);
        } else {
            $purchase  = new ChallanProduct();
            $purchase->product_id = $this->productId;
            $purchase->quantity = $this->quantity;
            $purchase->bundle_id = $this->bundleId;
            $purchase->created_at = Carbon::now();
            $purchase->save();


            // stock manage
            Product::where('id', $this->productId)->decrement('current_stock', $this->quantity);
        }
    }



    public function view($id)
    {
        $challan = ChallanInfo::findOrFail($id);
        return $challan;
    }


    // challan cancel
    public function cancel($bundleId) {
        $newBundleId = 'challanCancel' . '-' . rand(111111, 99999999);
        $products = ChallanProduct::where('bundle_id', $bundleId)->get();

        foreach($products as $product) {
            // manage stock
            $p = Product::where("id", $product->product_id)->first();


            $p->update([
                'current_stock' => $p->current_stock + $product->quantity
            ]);

            // challan cancel
            $challanCancel = new ChallanCancel();
            $challanCancel->date = Carbon::now();
            $challanCancel->previous_bundle_id = $bundleId;
            $challanCancel->bundle_id = $newBundleId;
            $challanCancel->save();


            // challan cancel product
            $challanCancelProduct = new ChallanCancelProduct();
            $challanCancelProduct->product_id = $product->product_id;
            $challanCancelProduct->quantity = $product->quantity;
            $challanCancelProduct->previous_bundle_id = $bundleId;
            $challanCancelProduct->bundle_id = $newBundleId;
            $challanCancelProduct->created_at = Carbon::now();
            $challanCancelProduct->save();


        }

         // insert data into transactions
         $transaction = new TransactionBundle();
         $transaction->type = 'Challan Cancel';
         $transaction->bundle_id = $newBundleId;
         $transaction->date = Carbon::now();
         $transaction->save();


         // challan product update
         ChallanProduct::where('bundle_id', $bundleId)->update([
            'quantity'  => 0,
         ]);
    }


    // cancel challan specific product
    public function cancelChallanProduct($bundleId, $challanProductId) {
        $newBundleId = 'challanCancel' . '-' . rand(111111, 99999999);
        $challanProduct = ChallanProduct::findOrFail($challanProductId);


            // manage stock
            $p = Product::where("id", $challanProduct->product_id)->first();


            $p->update([
                'current_stock' => $p->current_stock + $this->quantity
            ]);

            // challan cancel
            $challanCancel = new ChallanCancel();
            $challanCancel->date = Carbon::now();
            $challanCancel->previous_bundle_id = $bundleId;
            $challanCancel->bundle_id = $newBundleId;
            $challanCancel->save();


            // challan cancel product
            $challanCancelProduct = new ChallanCancelProduct();
            $challanCancelProduct->product_id = $challanProduct->product_id;
            $challanCancelProduct->quantity = $this->quantity;
            $challanCancelProduct->previous_bundle_id = $bundleId;
            $challanCancelProduct->bundle_id = $newBundleId;
            $challanCancelProduct->created_at = Carbon::now();
            $challanCancelProduct->save();



            // insert data into transactions
            $transaction = new TransactionBundle();
            $transaction->type = 'Challan Cancel';
            $transaction->bundle_id = $newBundleId;
            $transaction->date = Carbon::now();
            $transaction->save();


            // challan product update
            ChallanProduct::findOrFail($challanProductId)->update([
                'quantity'  => $challanProduct->quantity - $this->quantity,
             ]);
    }

}
