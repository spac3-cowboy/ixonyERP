@extends('layouts.master')


@section('content')
<div class="row">
<div class="col-xl-12 col-lg-6">
                                <div class="card card-h-100 border border-primary rounded">
                                    <div class="d-flex card-header justify-content-between align-items-center">
                                        <h4 class="header-title">Add Product</h4>
                                        
                                    </div>
                                    <div class="card-body pt-0">
                                    <form class="col" method="POST" action="{{ route('addToChallan') }}">
                                    @csrf
                                    <div class="col-auto">
                                        <input type="hidden" name="challan_id" value="{{$challan->id}}"/>
                                        <select name="product_id" class="form-control border border-primary text-primary">
                                            @foreach($products as $product)
                                            <option value="{{$product->id}}">{{$product->title}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <br>
                                    <input type="text" class="form-control border border-primary text-primary" placeholder="Quantity" name="quantity">
                                    <br/>
                                    <div class="col-auto mt-3">
                                        <button type="submit" class="btn btn-primary mb-3">Add Product</button>
                                    </div>
                                    <div class="col-auto mt-3">
                                        <a href="{{route('challanItems',$challan->id)}}" class="btn btn-primary mb-3">Challan Form</a>
                                    </div>
                                </form>
                                            
                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->

                            </div> <!-- end col -->
</div>


@endsection