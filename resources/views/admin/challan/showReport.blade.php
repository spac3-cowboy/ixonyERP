@extends('master')

@section('content')
    <div class="container" style="margin-top: 100px;">
        <a href="{{ route('Report') }}" class="btn btn-info my-3 mx-3">Report</a>
        <div class="row">
            <div class="col-lg-12">
                <div class="card" id="printContent">
                    <div class="card-header">
                        <div class="d-flex">
                            <img src="{{ asset('ixony.png') }}" alt="">
                            <h3>Engineering Limited</h3>
                        </div>

                    </div>
                    <div class="card-body">
                        <table class="table table-bordered table-sm">
                            <tr>
                                {{-- <th>Type</th> --}}
                                <th>Date</th>

                                {{-- challan --}}
                                @if($reports->first()->type == 'Challan')
                                    <th>Challan No</th>
                                    <th>Work Order No</th>
                                    <th>Customer Name</th>
                                @endif


                                {{-- Challan Cancel --}}
                                @if($reports->first()->type == 'Challan Cancel')
                                    <th>Challan No</th>
                                    <th>Work Order No</th>
                                    <th>Customer Name</th>
                                @endif



                                {{-- purchase --}}
                                @if($reports->first()->type == 'Purchase')
                                    <th>Purchase From</th>
                                    <th>Supplier Challan No</th>
                                @endif

                                <th>Product</th>
                                <th>Total</th>

                            </tr>


                            @if ($reports != '')
                                @forelse ($reports as $report)
                                    @if ($report->type == 'Purchase')
                                        @php
                                            $total = App\Models\PurchaseProduct::where('bundle_id', $report->bundle_id)->count();
                                            $product = App\Models\PurchaseProduct::where('bundle_id', $report->bundle_id)->get();
                                            $purchaseInfo = App\Models\PurchaseInfo::where('bundle_id', $report->bundle_id)->get();
                                        @endphp
                                    @elseif($report->type == 'Challan')
                                        @php
                                            $total = App\Models\ChallanProduct::where('bundle_id', $report->bundle_id)->count();
                                            $product = App\Models\ChallanProduct::where('bundle_id', $report->bundle_id)->get();
                                            $challanInfo = App\Models\ChallanInfo::where('bundle_id', $report->bundle_id)->get();
                                        @endphp
                                    @elseif($report->type == 'Challan Cancel')
                                        @php
                                            $total = App\Models\ChallanCancelProduct::where('bundle_id', $report->bundle_id)->count();
                                            $product = App\Models\ChallanCancelProduct::where('bundle_id', $report->bundle_id)->get();
                                            $challanCancelInfo = App\Models\ChallanCancel::where('bundle_id', $report->bundle_id)->get();
                                        @endphp
                                    @endif


                                    <tr class="report" data-url="{{ route('Report.Product', $report->bundle_id) }}">
                                        {{-- <td>{{ $sl + 1 }}</td> --}}
                                        {{-- <td>{{ $report->type }}</td> --}}
                                        <td style="font-size: 12px">{{ $report->date }}</td>

                                        {{-- challan --}}
                                        @if($report->type == 'Challan')
                                            @foreach($challanInfo as $info)
                                                <td style="font-size: 12px;">{{$info->challan_no}}</td>
                                                <td style="font-size: 12px;">{{$info->work_order_no}}</td>
                                                <td style="font-size: 12px;">{{$info->customer_name}}</td>
                                            @endforeach
                                        @endif


                                        {{-- Challan Cancel --}}
                                        @if($report->type == 'Challan Cancel')




                                            @foreach($challanCancelInfo as $info)


                                            @php
                                                $result = App\Models\ChallanInfo::where('bundle_id', $info->previous_bundle_id)->first();
                                            @endphp

                                                <td style="font-size: 12px;">{{$result->challan_no}}</td>
                                                <td style="font-size: 12px;">{{$result->work_order_no}}</td>
                                                <td style="font-size: 12px;">{{$result->customer_name}}</td>

                                            @endforeach
                                        @endif


                                        {{-- purchase --}}
                                        @if($report->type == 'Purchase')
                                            @foreach($purchaseInfo as $info)
                                                <td style="font-size: 12px;">{{$info->purchase_from}}</td>
                                                <td style="font-size: 12px;">{{$info->supplier_challan_no}}</td>
                                            @endforeach
                                        @endif


                                        <td style="width: 400px;">
                                            @foreach ($product as $p)
                                                <div>
                                                    <div style="border: 1px solid black; margin-bottom: 10px;">
                                                        <p style="margin: 10px; font-size: 12px;">Model: {{$p->product->model}}</b></p>
                                                        <p style="margin: 10px; font-size: 12px;">Quantity: <b>{{$p->quantity}}</b></p>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </td>
                                        <td style="font-size: 12px;">
                                            {{$total}}
                                        </td>

                                    </tr>




                                @empty
                                    No Records Found
                                @endforelse
                            @endif


                        </table>

                    </div>
                </div>


            </div>

        </div>

    </div>
@endsection

@section('scripts')
    {{-- <script>
        const report = document.querySelectorAll('.report');
        report.forEach((item) => {
            item.addEventListener('click', function() {
                let dataURL = item.getAttribute('data-url');
                location.href = dataURL;
            });
        });
    </script> --}}
@endsection
