@extends('master')

@section('content')
    <div class="container" style="margin-top: 100px;">
        @can('challan')
            <a href="{{ route('Product.Challan.List') }}" class="btn btn-primary my-3">Challan List</a>
        @endcan


        <div class="row">

            @can('show_challan_product')
                <div class="col-lg-9 col-sm-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="mt-2">Challan Product List</h3>
                        </div>
                        <div class="card-body">
                            <table class="table table-striped table-sm">
                                <tr>
                                    <th>SL</th>
                                    <th>Title</th>
                                    <th>Product Model</th>
                                    <th>Quantity</th>
                                    <th>Challan No</th>
                                    <th>Date</th>
                                    @can('cancel_challan_product')
                                    <th>Action</th>
                                    @endcan
                                </tr>
                                @foreach ($challanProducts as $sl => $product)
                                    <tr>
                                        <td>{{ $sl + 1 }}</td>
                                        <td>{{ $product->product->title == '' ? 'NA' : $product->product->title }}</td>
                                        <td>{{ $product->product->model }}</td>
                                        <td>{{ $product->quantity }}</td>
                                        <td>
                                            @php
                                                $challanNo = App\Models\ChallanInfo::where('bundle_id', $bundleId)->first()->challan_no;
                                            @endphp
                                            {{ $challanNo }}
                                        </td>
                                        <td>
                                            @php
                                                $date = App\Models\ChallanInfo::where('bundle_id', $bundleId)->first()->date;
                                            @endphp
                                            {{ $date }}
                                        </td>

                                        @can('cancel_challan_product')
                                        <td>
                                            <a href="{{route('Cancel.Challan.Product', $product->id)}}" class="btn btn-sm btn-danger">Cancel</a>
                                        </td>
                                        @endcan
                                    </tr>

                                @endforeach
                            </table>

                        </div>
                    </div>
                </div>
            @endcan

            @can('add_challan_product')
                <div class="col-lg-3 col-sm-12 col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <h3>Add Product</h3>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('Challan.Product.Store') }}" method="POST">
                                @csrf

                                @if(session('stock'))
                                    <div class="alert alert-danger">
                                        {{session('stock')}}
                                    </div>
                                @endif

                                <input type="hidden" name="bundle_id" value="{{ $bundleId }}">

                                <div class="my-2">
                                    <label>Product</label>
                                    <select name="product_id" id="product_id" class="form-control select" style="width: 100%;">
                                        <option selected disabled>Select Product</option>
                                        @foreach ($products as $product)
                                            <option value="{{ $product->id }}">{{ $product->model }}</option>
                                        @endforeach
                                    </select>

                                    @error('product_id')
                                        <strong class="text-danger">
                                            {{ $message }}
                                        </strong>
                                    @enderror
                                </div>

                                <div class="my-2">
                                    <label>Quantity</label>
                                    <input type="number" id="quantity" name="quantity" placeholder="Quantity"
                                        class="form-control" value="{{ old('quantity') }}">
                                    @error('quantity')
                                        <strong class="text-danger">
                                            {{ $message }}
                                        </strong>
                                    @enderror
                                </div>


                                <div class="my-2">
                                    <button class="btn btn-primary">Add</button>
                                </div>


                            </form>
                        </div>
                    </div>
                </div>
            @endcan


        </div>
    </div>
@endsection
