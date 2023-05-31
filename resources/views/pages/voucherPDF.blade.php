<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Challan</title>
        <style>
            .main {
                margin: 0 auto;
                justify-content: center;
                align-items: center;
            }

            .challan-header {
                display: grid;
                grid-template-columns: 1fr 1fr;
            }

            .header-content {
                border: 2px solid black;
                padding-left: 20px;
            }

            .challan-description {
                margin-top: 25px;
                border: 1px solid black;
            }
            .challan-content {
                /* border: 1px solid black; */
            }
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td,
            th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
            button{
                position: relative;
                bottom: -15px;
                left: 1287px;
                font-size: 25px;
                cursor: pointer;
            }

            img {
                opacity: 0.2;
                position: absolute;
                top: 50%;
                right: 50%;
                transform: translate(50%,-50%);
            }
           
        </style>
    </head>
    <body>
        <div class="main">
        <img src="{{asset('assets/images/ixony.png')}}" >
            <div class="challan-header">
                <div class="header-content">
                    <h2>Ixony Engineering Limited</h2>
                    <h5>House #10, Block #C, Main Road</h5>
                    <h5>Banasree, Rampura, Dhaka - 1219</h5>
                    <h5>Cell: +880 1841 632 703, +880 1713 632 703</h5>
                </div>
                <div class="header-content">
                    <h4>Challan No: {{$challan->number}}</h4>
                    <h4>Work Order Number: {{$challan->work_order_number}}</h4>
                    <!-- <h4>Work Order Date: {{$challan->work_order_date}}</h4> -->
                    <h4>Date: {{date('d-m-Y')}}</h4>
                </div>
            </div>
            <div class="challan-description">
                <table>
                    <tr>
                        <th>Products</th>
                        <th>Description</th>
                        <th>Quantity</th>
                    </tr>
                    @foreach($challanItem as $Item)
                    <tr>
                        <td>{{$Item->product->title}}</td>
                        <td>{{$Item->product->details}}</td>
                        <td>{{$Item->quantity}}</td>
                      </tr>
                      @endforeach
                </table>
            </div>
        </div>
        <button onclick="window.print()"><i class="fa fa-print"></i></button>
    </body>
</html>
