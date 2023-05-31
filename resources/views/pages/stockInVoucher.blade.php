@extends('layouts.master')


@section('content')
<div class="row">
<div class="container">
        <table class="table table-centered table-nowrap table-hover mb-0">
                                                <tbody>
                                                   
                                                    <tr class="row">

                                                        <td class="col-md-6">
                                                            <h3>Ixony Engineering</h3>
                                                            <p>Banasree, Rampura, Dhaka-1219</p>
                                                        </td>

                                                        <td class="col-md-6">
                                                            <h4>Voucher</h4>
                                                        </td>

                                                    </tr>

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

                                                        @foreach($stockProducts as $item)
                                                        <td class="col-md-4">
                                                           
                                                            <P>{{$item->title}}</P>
                                                        </td>

                                                        <td class="col-md-6">
                                                            
                                                            <p>{{$item->details}}</p>
                                                        </td>

                                                        <td class="col-md-2">
                                                            
                                                            <p>{{$item->base_unit}}</p>
                                                        <td>
                                                        @endforeach
                                                    </tr>
                                                   
                                                
                                                </tbody>
                                            </table>
        
        <div>
        <br>
        <button class="input-group-text btn btn-primary">Print Voucher</button>

                        </div>


@endsection