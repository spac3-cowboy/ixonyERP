@extends('master')

@section('content')
    <div class="container" style="margin-top: 100px;">


        <div class="col-lg-8 m-auto col-sm-12 col-md-12">
            <a href="{{ route('category') }}" class="btn btn-primary my-3">List</a>

            <div class="card">
                <div class="card-header">
                    <h3>Edit Category</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('category.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf

                        @if (session('update'))
                            <div class="alert alert-success">
                                {{ session('update') }}
                            </div>
                        @endif

                        <input type="hidden" name="id" value="{{ $category->id }}">


                        @if (session('category_update'))
                            <div class="alert alert-success">
                                {{ session('category_update') }}
                            </div>
                        @endif

                        <div class="form-group mb-3">
                            <input type="text" name="name" value="{{ $category->name }}" class="form-control">

                        </div>

                        {{-- <div class="form-group mb-3">
                            <input type="file" name="image" class="form-control"
                                onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])">
                        </div>

                        <div class="form-group mb-3">
                            <img width="200" src="{{ asset('/uploads/category') }}/{{ $category->image }}" id="blah"
                                alt="">
                        </div> --}}

                        <div class="form-group">
                            <button class="btn btn-primary" type="submit">Update</button>
                        </div>



                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
