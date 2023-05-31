@extends('layouts.master')


@section('content')
<div class="row">
<div class="container">
        <table class="table table-centered table-nowrap table-hover mb-0">
                                                <tbody>

                                                    <tr class="row border border-success-subtle">

                                                        <td class="col-md-4">
                                                            <h6 class="border border-secondary p-2">Product</h6>
                                                            
                                                        </td>

                                                        <td class="col-md-6">
                                                            <h6 class="border border-secondary p-2">Description</h6>
                                                            
                                                        </td>

                                                        <td class="col-md-2">
                                                            <h6 class="border border-secondary p-2">Quantity</h6>
                                                            
                                                        </td>

                                                        @foreach($challan as $item)

                                                        <td class="col-md-4">
                                                           
                                                            <P>{{$item->number}}</P>
                                                        </td>

                                                        <td class="col-md-6">
                                                            
                                                            <p>{{$item->status}}</p>
                                                        </td>

                                                        <td class="col-md-2">
                                                            
                                                            <!-- <p>{{$item->work_order_number}}</p> -->
                                                            <a href="{{route('addProductToChallan',$item->id)}}"  class="btn btn-sm">Add Product To Challan</a>
                                                        <td>

                                                        
                                                        @endforeach
                                                    </tr>
                                                   
                                                
                                                </tbody>
                                            </table>
        
        <div>
        <br>
        <!-- <a class="input-group-text btn btn-primary" href="{{route('createPDF')}}"> Voucher</a> -->

                        </div>


@endsection