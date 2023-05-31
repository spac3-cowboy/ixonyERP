@extends('layouts.master')


@section('content')
<div class="row">
<div class="col-xl-12 col-lg-6 border border-primary">
    
    <div class="card card-h-100">
        <div class="d-flex card-header justify-content-between align-items-center">
            <h4 class="header-title">Challan Form</h4>
        </div>
        <div class="card-body pt-0">
    <form class="col" method="POST" action="{{route('challanInsert')}}">
        @csrf
        <div class="col-auto mt-3">
            <select class="form-control border border-primary" name="stock_out_bundle_id"> 
                    @foreach($stockOut as $item)
                    <option value="{{$item->id}}">{{$item->title}}</option>
                    @endforeach
            </select>
        </div>
        <div class="col-auto mt-3">
            <input type="text" class="form-control border border-primary text-primary" placeholder="Company Address" name="company_address"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="text" class="form-control border border-primary text-primary" placeholder="Work Order Number" name="work_order_number"  value="">
        </div>

        <div class="col-auto mt-3">
            
            <input type="text" class="form-control border border-primary text-primary" placeholder="Work Order Date" name="work_order_date"  value="">
        </div>

        {{-- <div class="col-auto mt-3">
            
            <input type="text" class="form-control" placeholder="Number" name="number"  value="">
        </div> --}}

        <div class="col-auto mt-3">
            <select class="form-control border border-primary" name="status">
                <option value="In Stock">In Stock</option>
                <option value="Stock Out">Stock Out</option>
            </select>
        </div>

        <div class="col-auto mt-3">
            <button type="submit" class="btn btn-primary mb-3">Create</button>
        </div>

    </form>
                
        </div> <!-- end card-body-->
    </div> <!-- end card-->

</div>



</div>

</div>


@endsection