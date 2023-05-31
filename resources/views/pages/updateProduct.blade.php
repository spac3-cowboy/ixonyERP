@extends('layouts.master')


@section('content')
<div class="row">
<div class="col-xl-12 border border-primary col-lg-6">
                                <div class="card card-h-100">
                                    <div class="d-flex card-header justify-content-between align-items-center">
                                        <h4 class="header-title">Update Product</h4>
                                        <div class="dropdown">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Sales Report</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Export Report</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Profit</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Action</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body pt-0">
                                    <form class="col" method="POST" action="{{route('product.update', $updateProduct->id)}}">
                                    @csrf
                                    <div class="col-auto">
                                        
                                        <input type="text" class="form-control" placeholder="Title" name="series" value="{{$updateProduct->series}}">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control" placeholder="Details" name="title" value="{{$updateProduct->title}}">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control" placeholder="Details" name="details" value="{{$updateProduct->details}}">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control" placeholder="Model" name="model"  value="{{$updateProduct->model}}">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control" placeholder="Price" name="current_price"  value="{{$updateProduct->current_price}}">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control" placeholder="Brand" name="brand"  value="{{$updateProduct->brand}}"> 
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control" placeholder="Origin" name="origin"  value="{{$updateProduct->origin}}">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control" placeholder="Country of Manufacturing" name="country_of_manufacturing"  value="{{$updateProduct->country_of_manufacturing}}">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control" placeholder="Base Unit" name="base_unit" value="{{$updateProduct->base_unit}}">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control" placeholder="Current Unit" name="current_stock"  value="{{$updateProduct->current_stock}}">
                                    </div>
                                    <div class="col-auto mt-3">
                        
                                        <input type="text" class="form-control" placeholder="Stock Notification Limit" name="stock_notification_limit" value="{{$updateProduct->stock_notification_limit}}">
                                    </div>
                                   
                                    <div class="col-auto mt-3">
                                        <button type="submit" class="btn btn-primary mb-3">Update Product</button>
                                    </div>
                                </form>
                                            
                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->

                            </div> <!-- end col -->
</div>


@endsection