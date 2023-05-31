@extends('layouts.master')


@section('content')
<div class="row">
<div class="col-xl-7 col-lg-6">
    
    <div class="card card-h-100 border border-primary">
        <div class="d-flex card-header justify-content-between align-items-center">
            <h4 class="header-title">Stock Out Item</h4>
        </div>
        <div class="card-body pt-0">
    <form class="col" method="POST" action="{{route('removeItemToStock', $stockBundle->id)}}">
        @csrf
        <div class="col-auto mt-3">
            <select class="form-control border border-primary text-primary" name="product_id"> 
                @foreach($products as $product)
                    <option value="{{$product->id}}">{{$product->title}}</option>
                @endforeach
            </select>
        </div>
        <div class="col-auto mt-3">
            <input type="text" class="form-control border border-primary text-primary" placeholder="Units" name="units"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="text" class="form-control border border-primary text-primary" placeholder="Price" name="price"  value="">
        </div>

        <div class="col-auto mt-3">
            <select class="form-control border border-primary text-primary" name="status">
                <option value="Stock In">Stock In</option>
                <option value="Stock Out">Stock Out</option>
            </select>
        </div>

        <div class="col-auto mt-3">
            <button type="submit" class="btn btn-primary mb-3">Stock Out Item</button>
        </div>
    </form>
                
        </div> <!-- end card-body-->
    </div> <!-- end card-->

</div>



</div>

<div class="">
    <div class="col-xl-12 col-lg-6 order-lg-2 order-xl-1">
        <div class="card border border-primary">
            

            <div class="card-body pt-0">
                <div class="table-responsive">
                    <table class="table table-centered table-nowrap table-hover mb-0">
                        <tbody>
                           
                            @foreach ($stockOutItem as $item)
                        <tr>
                                <td>
                                    <h5 class="font-14 my-1 fw-normal">{{$item->product->title}}</h5>
                                    <span class="text-muted font-13">Title</span>
                                </td>
                                <td>
                                    <h5 class="font-14 my-1 fw-normal">{{$item->units}}</h5>
                                    <span class="text-muted font-13">Unit</span>
                                </td>
                                <td>
                                    <h5 class="font-14 my-1 fw-normal">{{$item->price}}</h5>
                                    <span class="text-muted font-13">Price</span>
                                </td>

                                <td>
                                    <a href="{{route('itemDeleteFromStockOut', $item->id)}}"  class="btn btn-sm">Delete</a>
                                </td>
                                
                            </tr>
                           @endforeach
                        </tbody>
                        
                    </table>
                </div> <!-- end table-responsive-->
            </div> <!-- end card-body-->
        </div> <!-- end card-->
    </div> <!-- end col-->

</div>


@endsection