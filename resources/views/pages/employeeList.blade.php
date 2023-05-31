@extends('layouts.master')


@section('content')
<div class="row">
                            <div class="col-xl-12 col-lg-6 order-lg-2 order-xl-1">
                                <div class="card border border-primary rounded">
                                    

                                    <div class="card-body pt-0 ">
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap table-hover mb-0">
                                                <tbody>
                                                @foreach($employees as $employee)   
                                                <tr>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$employee->name}}</h5>
                                                            <span class="text-muted font-13">Name</span>
                                                        </td>
							<td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$employee->designation}}</h5>
                                                            <span class="text-muted font-13">Designation</span>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$employee->parmanent_address}}</h5>
                                                            <span class="text-muted font-13">Permanent Address</span>
                                                        </td>

                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$employee->current_address}}</h5>
                                                            <span class="text-muted font-13">Current Address</span>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$employee->nid_number}}</h5>
                                                            <span class="text-muted font-13">NID Number</span>
                                                        </td>
                                                        <td>
                                                            <h5 class="font-14 my-1 fw-normal">{{$employee->photo}}</h5>
                                                            <span class="text-muted font-13">Photo</span>
                                                        </td>

                                                        <td>
                                                            <a href=""  class="btn btn-sm">Update</a>
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