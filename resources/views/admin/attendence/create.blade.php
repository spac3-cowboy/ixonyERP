@extends('layouts.master')
@section('content')
    <link rel="stylesheet" href="{{ asset('/assets/css/attend.css') }}">
    <style>
        .switch-toggle {
            width: auto;
        }

        .switch-toggle label:not(.disabled) {
            cursor: pointer;
        }

        .switch-candy a {
            border: 1px solid #333;
            border-radius: 3px;
            background-color: white;
            background-image: -webkit-linear-gradient(top, rgba(255, 255, 255, 0.2), transparent);
            background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0.2), transparent);
        }

        .switch-toggle.switch-candy,
        .switch-light.switch-candy>span {
            background-color: #5a6268;
            border-radius: 3px;
            box-shadow: inset 0 2px 6px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(255, 255, 255, 0.2);
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <!-- Start Content-->


    <div class="container-fluid my-3">

        <a href="{{ route('Employee.Attendence') }}" class="btn btn-primary my-2">Attendence List</a>

        <!-- end page title -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="text-center">Create Todays Attendence</h3>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('Employee.Attendence.Store') }}" method="post" id="myForm">
                            @csrf


                            <div class="form-group col-md-4 my-2">
                                <label for="date" class="control-label my-1">Attendance Date</label>
                                <input type="date" name="date" id="date"
                                    class="checkdate form-control form-control-sm singledatepicker"
                                    placeholder="Attendance Date" autocomplete="off">
                                @error('date')
                                    <strong class="text-danger">
                                        {{ $message }}
                                    </strong>
                                @enderror
                            </div>
                            <table class="table sm table-bordered table-striped dt-responsive" style="width: 100%">
                                <thead>
                                    <tr>
                                        <th rowspan="2" class="text-center" style="vertical-align: middle">Sl.</th>
                                        <th rowspan="2" class="text-center" style="vertical-align: middle">Employee
                                            Name</th>
                                        <th colspan="3" class="text-center" style="vertical-align: middle">Attendance
                                            Status</th>
                                    </tr>
                                    <tr>
                                        <th class="text-center btn present_all"
                                            style="display: table-cell;background-color:#114190">Present</th>
                                        <th class="text-center btn leave_all"
                                            style="display: table-cell;background-color:#114190">Leave</th>
                                        <th class="text-center btn absent_all"
                                            style="display: table-cell;background-color:#114190">Absent</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($employees as $key => $employee)
                                        <tr id="div {{ $employee->id }}" class="text-center">
                                            <input type="hidden" name="employee_id[]" value="{{ $employee->id }}"
                                                class="employee_id">
                                            <td>{{ $key + 1 }}</td>
                                            <td>{{ $employee->name }}</td>
                                            <td colspan="3">
                                                <div class="switch-toggle switch-3 switch-candy">
                                                    <input class="present" id="present{{ $key }}"
                                                        name="status{{ $key }}" value="present" type="radio"
                                                        checked="checked">

                                                    <label for="present{{ $key }}">Present</label>
                                                    <input class="leave" id="leave{{ $key }}"
                                                        name="status{{ $key }}" value="Leave" type="radio">

                                                    <label for="leave{{ $key }}">Leave</label>
                                                    <input class="absent" id="absent{{ $key }}"
                                                        name="status{{ $key }}" value="Absent" type="radio">

                                                    <label for="absent{{ $key }}">Absent</label>
                                                    <a></a>
                                                </div>

                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <button type="submit" class="btn btn-primary"> Submit </button>
                        </form>
                    </div>
                    <!-- end card body-->

                </div>
                <!-- end card -->
            </div>
            <!-- end col-->
        </div>
        <!-- end row-->
    </div>
    <!-- container -->


    <script type="text/javascript">
        $(document).on('click', '.present', function() {
            $(this).parents('tr').find('.datetime').css('pointer-events', 'none').css('background-color', '#dee2e6')
                .css('color', '#495057');
        });
        $(document).on('click', '.leave', function() {
            $(this).parents('tr').find('.datetime').css('pointer-events', '').css('background-color', 'white').css(
                'color', '#495057');
        });
        $(document).on('click', '.absent', function() {
            $(this).parents('tr').find('.datetime').css('pointer-events', 'none').css('background-color', '#dee2e6')
                .css('color', '#dee2e6');
        });
    </script>
    <script type="text/javascript">
        $(document).on('click', '.present_all', function() {
            $("input[value=Present]").prop('checked', true);
            $('.datetime').css('ponter-events', 'none').css('background-color', '#dee2e6').css('color', '#495057');
        });
        $(document).on('click', '.leave_all', function() {
            $("input[value=Leave]").prop('checked', true);
            $('.datetime').css('ponter-events', '').css('background-color', 'white').css('color', '#495057');
        });
        $(document).on('click', '.absent_all', function() {
            $("input[value=Absent]").prop('checked', true);
            $('.datetime').css('ponter-events', 'none').css('background-color', '#dee2e6').css('color', '#dee2e6');
        });
    </script>
@endsection


@section('script')
    @if (session('attendence'))
        <script>
            const Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000,
                timerProgressBar: true,
                didOpen: (toast) => {
                    toast.addEventListener('mouseenter', Swal.stopTimer)
                    toast.addEventListener('mouseleave', Swal.resumeTimer)
                }
            })

            Toast.fire({
                icon: 'success',
                title: '{{ session('attendence') }}'
            })
        </script>
    @endif
@endsection
