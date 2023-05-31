@extends('layouts.master')


@section('content')

<div class="row">
                            <div class="col-xl-12 col-lg-6 order-lg-2 order-xl-1 border border-primary">
                                <div class="card">
                                    <div class="d-flex card-header justify-content-between align-items-center">
                                        <h4 class="header-title">Matching Products</h4>
                                    </div>

                                    <div class="card-body pt-0">
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap table-hover mb-0">
                                                <tbody>
                                                    @foreach($products as $product)
                                                <tr>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$product->series}}</h5>
                                                            <span class="text-muted font-13">{{$product->created_at}}</span>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$product->current_price}}</h5>
                                                            <span class="text-muted font-13">Price</span>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$product->title}}</h5>
                                                            <span class="text-muted font-13">Title</span>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$product->brand}}</h5>
                                                            <span class="text-muted font-13">Brand</span>
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