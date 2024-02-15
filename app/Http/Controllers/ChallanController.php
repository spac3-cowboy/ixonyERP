<?php

namespace App\Http\Controllers;

use App\Models\Challan;
use App\Models\ChallanInfo;
use App\Models\ChallanProduct;
use App\Models\Product;
use App\services\ChallanService;
use Illuminate\Http\Request;

class ChallanController extends Controller
{
    public function productChallanList()
    {
        try {
            $service = new ChallanService();
            $challans = $service->challan();

            return view('admin.challan.challan', [
                'challans'      => $challans,
            ]);
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }


    public function productChallanStore(Request $request)
    {

        // $request->validate([
        //     'challan_no'        => 'required',
        //     'work_order_no'     => 'required',
        //     'date'              => 'required',
        // ]);

        try {
            $service = new ChallanService();
            $service
                ->setDate($request->date)
                ->setCustomerName($request->customer_name)
                ->setChallanNo($request->challan_no)
                ->setDeliveryLocation($request->delivery_location)
                ->setContactPerson($request->contact_person)
                ->setContactNumber($request->contact_number)
                ->setWorkOrderNo($request->work_order_no)
                ->setReturnable($request->returnable)
                ->save();

            $notification = array(
                'message' => 'Challan Successful',
                'alert-type' => 'success',
            );

            return back()->with($notification);
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }



    public function productChallanEdit($id)
    {
        try {
            $service = new ChallanService();
            $challan = $service->edit($id);
            $products = $service->product();

            return view('admin.challan.editChallan', [
                'challan'      => $challan,
                'products'      => $products,
            ]);
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }


    public function productChallanUpdate(Request $request)
    {

        try {
            $service = new ChallanService();
            $service
                ->setDate($request->date)
                ->setCustomerName($request->customer_name)
                ->setChallanNo($request->challan_no)
                ->setDeliveryLocation($request->delivery_location)
                ->setContactPerson($request->contact_person)
                ->setContactNumber($request->contact_number)
                ->setWorkOrderNo($request->work_order_no)
                ->setReturnable($request->returnable)
                ->update($request->id);

            $notification = array(
                'message' => 'Challan Updated Successfully',
                'alert-type' => 'success',
            );

            return back()->with($notification);
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }


    public function challanStatus(Request $request)
    {
        try {

            $service = new ChallanService();
            $service->setStatus($request->status)
                ->changeStatus($request->id);
            return response()->json(['success' => 'Status changed']);
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }


    public function productChallanView($id)
    {
        try {
            $service = new ChallanService();
            $challan = $service->view($id);
            $bundleId = ChallanInfo::findOrFail($id)->bundle_id;
            return view('admin.challan.viewChallan', [
                'challan'       => $challan,
                'bundleId'      => $bundleId,
            ]);
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }


    // ------------------- challan product add ----------------------------------------- //

    // challan product add
    public function challanProductAdd($bundleId)
    {
        try {
            $service = new ChallanService();
            $products = $service->product();
            $challanProducts = $service->challanProductList($bundleId);
            return view('admin.challan.challanProduct', [
                'bundleId'              => $bundleId,
                'products'              => $products,
                'challanProducts'       => $challanProducts,
            ]);
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }


    // challan product store
    public function challanProductStore(Request $request)
    {
        try {

            $product =  Product::findOrFail($request->product_id);

            // check stock
            if ($request->quantity > $product->current_stock) {
                return back()->with('stock', 'Out of Stock, Current Stock is :'. $product->current_stock);
            }

            else {
                $service = new ChallanService();
                $service->setProduct($request->product_id)
                    ->setQuantity($request->quantity)
                    ->setBundleId($request->bundle_id)
                    ->challanProduct();

                $notification = array(
                    'message'       => 'Product Added',
                    'alert-type'    => 'success',
                );

                return back()->with($notification);
            }

        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }

    // --------------------------- cancel challan ---------------------------------------- //

    // challan cancel
    public function challanCancel($bundleId) {
        try {
            if (ChallanProduct::where('bundle_id', $bundleId)->exists()) {
                $service = new ChallanService();
                $service->cancel($bundleId);

                return back()->with('cancel', 'Challan Cancel successful');
            } else {
                return back()->with('challan_error', 'No Product Exists in this challan');
            }
        } catch(\Exception $e) {
            return $e->getMessage();
        }
    }


    // cancel specific challan item and Product
    public function cancelChallanProduct($challanProductId) {
        try {
            $challanProduct = ChallanProduct::findOrFail($challanProductId);
            $bundleId = $challanProduct->bundle_id;
            return view('admin.challan.cancelChallanProduct', [
                'challanProduct'    => $challanProduct,
                'bundleId'          => $bundleId,
            ]);
        } catch(\Exception $e) {
            return $e->getMessage();
        }
    }

    // cancel challan product store
    public function cancelChallanProductStore(Request $request) {
        $request->validate([
            'quantity'      => 'required',
        ]);


        try {
            $challanProduct = ChallanProduct::findOrFail($request->id);
            $bundleId = $challanProduct->bundle_id;


            // if quantity is greater than the records
            if ($request->quantity > $challanProduct->quantity) {
                return back()->with('challan_stock', 'Challan Product Quantity Can not be greater than the records');
            }

            else {
                $service = new ChallanService();
                $service->setQuantity($request->quantity)
                ->cancelChallanProduct($bundleId, $request->id);

                return back()->with('cancel_challan_product', 'Challan Product Cancel Successful');
            }
        } catch(\Exception $e) {
            return $e->getMessage();
        }
    }

}
