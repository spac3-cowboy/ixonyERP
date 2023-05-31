@extends('layouts.master')


@section('content')
<div class="row">
<div class="col-xl-12 col-lg-6">
                                <div class="card card-h-100 border border-primary rounded">
                                    <div class="d-flex card-header justify-content-between align-items-center">
                                        <h4 class="header-title">Add Product</h4>
                                        
                                    </div>
                                    <div class="card-body pt-0">
                                    <form class="col" method="POST" action="{{ route('add-product') }}">
                                    @csrf
                                    <div class="col-auto">
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Product Series" name="series">
                                    </div>
                                    <br/>
                                    <div class="col-auto">
                                        
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Title" name="title">
                                    </div>

                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Details" name="details">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Model" name="model">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Price" name="current_price">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Brand" name="brand">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Origin" name="origin">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Country of Manufacturing" name="country_of_manufacturing">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Base Unit" name="base_unit">
                                    </div>
                                    <div class="col-auto mt-3">
                                        
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Current Unit" name="current_stock">
                                    </div>
                                    <div class="col-auto mt-3">
                        
                                        <input type="text" class="form-control border border-primary text-primary" placeholder="Stock Notification Limit" name="stock_notification_limit">
                                    </div>
                                    <div class="col-auto mt-3">
                                        <button type="submit" class="btn btn-primary mb-3">Add Product</button>
                                    </div>
                                </form>
                                            
                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->

                            </div> <!-- end col -->
</div>


@endsection