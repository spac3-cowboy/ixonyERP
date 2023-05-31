@extends('layouts.master')


@section('content')
<div>
    <div><h1>Add Employee</h1></div>
    <form class="col" method="POST" action="{{route('addEmployee')}}" enctype="multipart/form-data">
        @csrf
        <div class="col-auto mt-3">
            
        </div>
        <div class="col-auto mt-3">
            <input type="text" class="form-control" placeholder="Name" name="name"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="text" class="form-control" placeholder="Designation" name="designation"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="text" class="form-control" placeholder="Permanent Address" name="parmanent_address"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="text" class="form-control" placeholder="Current Address" name="current_address"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="text" class="form-control" placeholder="Personal Contract Number" name="personal_contract_number"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="text" class="form-control" placeholder="Office Contract Number" name="office_contract_number"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="text" class="form-control" placeholder="Whatsapp Number" name="whatsapp_number"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="text" class="form-control" placeholder="Email" name="email"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="text" class="form-control" placeholder="NID Number" name="nid_number"  value="">
        </div>
        <div class="col-auto mt-3">
            
            <input type="file" class="form-control" placeholder="Choose Photo" name="photo"  value="">
        </div>

        <div class="col-auto mt-3">
            
            <textarea name="others" id="" cols="30" rows="10" placeholder="Others Details"></textarea>
        </div>

        <div class="col-auto mt-3">
            <button type="submit" class="btn btn-primary mb-3">Add Employee</button>
        </div>
    </form>
</div>


@endsection