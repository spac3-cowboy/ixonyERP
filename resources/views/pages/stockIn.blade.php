@extends('layouts.master')


@section('content')
<div class="row">

    <div class="col-xl-12 col-lg-6 border border-primary rounded">
        <h4 class="header-title">Stock In</h4>
                    <form class="col p-5" method="POST" action="{{route('product.bundle')}}">
                    @csrf
                    <div class="col-auto">
                        
                        <input type="text" class="form-control border border-primary text-primary" placeholder="Title" name="title" value="">
                    </div>
            
                    <div class="col-auto mt-3">
                        <select class="form-control border border-primary text-primary" name="status">
                            <option value="Stock In">Stock In</option>
                            <option value="Stock Out">Stock Out</option>
                        </select>
                    </div>
                    <div class="col-auto mt-3">
                        
                        <button type="submit" class="btn btn-primary" >Create</button>
                    </div>
                </form>
                    
            </div> <!-- end card-body-->
        </div> <!-- end card-->

    

    </div>


@endsection