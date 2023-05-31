@extends('layouts.master')


@section('content')
<div class="row">

    <div class="col-md-6 col-sm-12">
        <div class="page-title-box">
            <div class="page-title-right">
                <ol class="breadcrumb m-0">

                </ol>
            </div>
            <h4 class="page-title"></h4>
        </div>
        <div class="card mb-md-0 mb-3">
            <div class="card-body ">
                <div>Add Products</div>
                <form class="row g-3" method="POST" action="{{route('stockOut')}}">
                    @csrf
                    <div class="product-add">
                    <div class="input-group" id="select">
                        
                        <select name="product_id" class="form-control" required>
                            @foreach($stockOutProduct as $product)
                                <option value="{{$product->id}}"> {{$product->title}}</option>
                            @endforeach
                        </select>
                        <input type="number" class="border border-primary" name="quantity" placeholder="Quantity" min="0"/>

                    </div>

                    </div>

                    
                    <div>
                        <a href id="addBtn" class="btn btn-primary add">Add More</button>
                    </div>

                    <div>
                        <button type="submit" class="btn btn-primary add">Submit</button>
                    </div>

                <form>
                
            </div>
        </div>
        
</div>
</div>

@endsection

@section('script')

<script>
        $('#addBtn').on('click', function () {
            $('.product-add').append(`<div class="input-group" id="select">         
                        <select name="product_id" class="form-control" required>
                            @foreach($stockOutProduct as $product)
                                <option value="{{$product->id}}"> {{$product->title}}</option>
                            @endforeach
                        </select>
                        <input type="number" class="border border-primary" name="quantity" placeholder="Quantity" min="0"/>
                    </div>`);

        });

        $(document).on('click', '.deleteBtn', function (){
            $(this).parent().parent().remove();
        });

    </script>

@endsection