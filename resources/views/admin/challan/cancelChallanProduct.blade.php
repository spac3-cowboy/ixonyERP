@extends('master')

@section('content')
    <div class="container" style="margin-top: 100px;">

        <div class="row">


                <div class="col-lg-6 m-auto col-sm-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>Cancel Product</h3>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('Cancel.Challan.Product.Store') }}" method="POST">
                                @csrf

                                @if (session('challan_stock'))
                                    <div class="alert alert-danger">
                                        {{session('challan_stock')}}
                                    </div>
                                @endif


                                @if (session('cancel_challan_product'))
                                    <div class="alert alert-success">
                                        {{session('cancel_challan_product')}}
                                    </div>
                                @endif


                                <input type="hidden" name="id" value="{{ $challanProduct->id }}">
                                <input type="hidden" name="product_id" value="{{$challanProduct->product_id}}">

                                <div class="my-2 alert alert-info">
                                    {{$challanProduct->product->model}}
                                </div>

                                <div class="my-2">
                                    <label>Quantity</label>
                                    <input type="number" name="quantity" placeholder="Quantity"
                                        class="form-control" value="{{ $challanProduct->quantity}}">
                                    @error('quantity')
                                        <strong class="text-danger">
                                            {{ $message }}
                                        </strong>
                                    @enderror
                                </div>


                                <div class="my-2">
                                    <button class="btn btn-primary">Submit</button>
                                </div>


                            </form>
                        </div>
                    </div>
                </div>


        </div>
    </div>
@endsection
