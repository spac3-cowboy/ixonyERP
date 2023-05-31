@extends('layouts.master')


@section('content')
<div class="row">
                            <div class="col-xl-12 col-lg-6 order-lg-2 order-xl-1 border border-primary rounded">
                                <div class="card">
                                    <div class="d-flex card-header justify-content-between align-items-center">
                                        <h4 class="header-title">Stock Out Details</h4>
                                        
                                    </div>

                                    <div class="card-body pt-0">
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap table-hover mb-0">
                                                <tbody>
                                                   
                                                      @foreach ($stockOutBundle as $item)
                                                          
                                                        
                                                <tr>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$item->title}}</h5>
                                                            <span class="text-muted font-13">Title</span>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$item->created_by}}</h5>
                                                            <span class="text-muted font-13">Created</span>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$item->status}}</h5>
                                                            <span class="text-muted font-13">Status</span>
                                                        </td>

                                                        <td>
                                                            <a href="{{route('stockOutItems', $item->id)}}"  class="btn btn-sm">Stock Out Products</a>
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