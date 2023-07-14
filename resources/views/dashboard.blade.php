@include('layouts.sidebar')
<script>
    function myCallback(data) {
        console.log("I am in callback")
        console.log(JSON.stringify(data));
        // alert(JSON.stringify(data));
        // const btn = document.getElementById('btn');
        // var text = JSON.stringify(obj, function (key, value){
        //     if (key == "success"){
        //         btn.style.display = 'block';
        //     }else {
        //         btn.style.display = 'none';
        //
        //     }
        // });
        // text.success=new su(text.success);
        alert(JSON.stringify(data));
    }
    function contactCallback(data) {
        console.log("I am in callback")
        console.log(JSON.stringify(data));
        // document.getElementById('anyme').value=data.data;
        alert(JSON.stringify(data));
    }


</script>
<!--app-content open-->
<div class="app-content main-content mt-0">
    <div class="side-app">

        <!-- CONTAINER -->
        <div class="main-container container-fluid">


            <!-- PAGE-HEADER -->
            <div class="page-header">
                <div>
                    <h1 class="page-title">Dashboard</h1>
                </div>
                <div class="ms-auto pageheader-btn">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- PAGE-HEADER END -->

            <div class="alert alert-info alert-dismissible alert-alt fade show">
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="btn-close">
                </button>
                <strong>Alert!</strong> {{$me->message}}.
            </div>
            <div class="row">
                <div class="col-xl-6">
                    <div class="card overflow-hidden">
                        <div class="card-body">
                            <div class="any-card">
                                <div class="c-con">
                                    <h4 class="heading mb-0">{{$greet}} <strong>{{Auth::user()->username}}!!</strong><img  src="#" alt=""></h4>

                               <h6>Your Referal Link</h6>
                                    <!-- The text field -->
                                    <input id="myInput" type="text" class="form-control" value="https://protocolcheapdata.com.ng/register?refer={{$user->username}}" >

                                    <!-- The button used to copy the text -->
                                    <button class="btn btn-info mb-1" onclick="myFunction()">Copy Link</button>

                                    <a href="{{url('myaccount')}}" class="btn btn-primary btn-sm">View Profile</a>
                                </div>
                                <img  src="{{asset('deve.png')}}" class="harry-img" alt="">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-primary">
                        <div class="card-header border-0">
                            <h4 class="heading mb-0 text-white">Balance & Deposit</h4>
                        </div>
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div class="sales-bx">
                                    <i class="fa fa-money yellow_color" style="font-size: 30px"></i>
                                    <h4>₦{{number_format(intval($wallet2->balance*1))}}</h4>
                                    <span>Balance</span>
                                </div>
                                <div class="sales-bx">
                                    <i class="fa fa-money blue1_color" style="font-size: 30px"></i>
                                    <h4>₦{{number_format(intval($totaldeposite *1))}}</h4>
                                    <span>Total Deposit</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card bg-info">
                        <div class="card-header border-0">
                            <h4 class="heading mb-0 text-white">Purchase & Bonus</h4>
                        </div>
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <div class="sales-bx">
                                    <i class="fa fa-money yellow_color" style="font-size: 30px;"></i>
                                    <h4>₦{{number_format(intval($bill *1))}}</h4>
                                    <span>Total Bills</span>
                                </div>
                                <div class="sales-bx">
                                    <i class="fa fa-lock yellow_color" style="font-size: 30px"></i>
                                    <h4>₦{{number_format(intval(0 *1))}}</h4>
                                    <span>Total Bonus</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12">
                    <div class="card bg-dark analytics-card">
                        <div class="card-body mt-4 pb-1">
                            <div class="row align-items-center">
                                <div class="col-xl-2">
                                    <h3 class="mb-3 text-white">Solution</h3>
                                    <p class="mb-0  pb-4 text-white">Validate all  <br>pending transaction</p>
                                </div>
                                <div class="col-xl-10">
                                    <div class="row">
                                        <div class="col-xl-2 col-sm-4 col-6">
                                            <div class="card ov-card">
                                                <div class="card-body">
                                                    <a href="{{route('invoice')}}"> <div class="ana-box">
                                                            <div class="ic-n-bx">
                                                                <div class="icon-box bg-primary ">
                                                                    <i class="fa fa-book text-white"></i>
                                                                </div>
                                                            </div>
                                                            <div class="anta-data">
                                                                <h5>Invoice</h5>
                                                                <span>Check Bills</span>
                                                                {{--                                                        <h3>+23%</h3>--}}
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-2 col-sm-4 col-6" data-bs-toggle="modal" data-bs-target="#airtimeModalCenter">
                                            <div class="card ov-card">
                                                <div class="card-body">
                                                    <div class="ana-box">
                                                        <div class="ic-n-bx">
                                                            <div class="icon-box bg-primary ">
                                                                <i class="fa fa-brands fa-mobile-phone text-white"></i>
                                                            </div>
                                                        </div>
                                                        <div class="anta-data">
                                                            <h5>Airtime</h5>
                                                            <span>Purchase</span>
                                                            {{--                                                        <h3>-32%</h3>--}}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-2 col-sm-4 col-6" data-bs-toggle="modal" data-bs-target="#dataModalCenter">
                                            <div class="card ov-card">
                                                <div class="card-body">
                                                    <div class="ana-box">
                                                        <div class="ic-n-bx">
                                                            <div class="icon-box bg-primary ">
                                                                <i class="fa fa-brands fa-cab text-white"></i>
                                                            </div>
                                                        </div>
                                                        <div class="anta-data">
                                                            <h5>Data</h5>
                                                            <span>Purchase</span>
                                                            {{--                                                        <h3>-32%</h3>--}}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-2 col-sm-4 col-6">
                                            <div class="card ov-card">
                                                <div class="card-body">
                                                    <a href="/"> <div class="ana-box">
                                                            <div class="ic-n-bx">
                                                                <div class="icon-box bg-primary">
                                                                    <i class="fa fa-brands fa-money text-white"></i>
                                                                </div>
                                                            </div>
                                                            <div class="anta-data">
                                                                <h5>Withdraw</h5>
                                                                <span>from wallet</span>
                                                                {{--                                                        <h3>-33%</h3>--}}
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-2 col-sm-4 col-6">
                                            <div class="card ov-card">
                                                <div class="card-body">
                                                    <a href="{{url('verifybill')}}"> <div class="ana-box">
                                                            <div class="ic-n-bx">
                                                                <div class="icon-box bg-primary">
                                                                    <i class=" fa fa-brands fa-bookmark text-white"></i>
                                                                </div>
                                                            </div>
                                                            <div class="anta-data">
                                                                <h5>Validate</h5>
                                                                <span>Bills</span>
                                                                {{--                                                        <h3>+25%</h3>--}}
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-2 col-sm-4 col-6">
                                            <div class="card ov-card">
                                                <div class="card-body">
                                                    <a href="{{url('verifydeposit')}}"> <div class="ana-box">
                                                            <div class="ic-n-bx">
                                                                <div class="icon-box bg-primary ">
                                                                    <i class="fa fa-brands fa-money text-white"></i>
                                                                </div>
                                                            </div>
                                                            <div class="anta-data">
                                                                <h5>Validate</h5>
                                                                <span>Deposit</span>
                                                                {{--                                                        <h3>+30%</h3>--}}
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal fade" id="airtimeModalCenter">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="loading-overlay" id="loadingSpinner" style="display: none;">
                                                    <div class="loading-spinner"></div>
                                                </div>
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">Airtime Recharge</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                        </button>
                                                    </div>
                                                    <form id="dataForm" >
                                                        @csrf
                                                        <div class="card card-body">
                                                            <p>AIRTIME PURCHASE</p>
                                                            {{--                       <input placeholder="Your e-mail" class="subscribe-input" name="email" type="email">--}}
                                                            <br/>
                                                            <div id="div_id_network" class="form-group">
                                                                <label for="network" class=" requiredField">
                                                                    Network<span class="asteriskField">*</span>
                                                                </label>
                                                                <div class="">
                                                                    <select name="id" class="text-success form-control" required="">

                                                                        <option value="MTN">MTN</option>
                                                                        <option value="GLO">GLO</option>
                                                                        <option value="AIRTEL">AIRTEL</option>
                                                                        <option value="9MOBILE">9MOBILE</option>


                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <br/>
                                                            <div id="div_id_network" >
                                                                <label for="network" class=" requiredField">
                                                                    Enter Amount<span class="asteriskField">*</span>
                                                                </label>
                                                                <div class="">
                                                                    <input type="number" id="amount" name="amount" min="100" max="4000" class="text-success form-control" required>
                                                                </div>
                                                            </div>
                                                            <br/>
                                                            <div id="div_id_network" class="form-group">
                                                                <label for="network" class=" requiredField">
                                                                    Enter Phone Number<span class="asteriskField">*</span>
                                                                </label>
                                                                <div class="">
                                                                    <input type="number" id="number" name="number" minlength="11" class="text-success form-control" required >
                                                                </div>
                                                            </div>
                                                            <input type="hidden" name="refid" value="<?php echo rand(10000000, 999999999); ?>">
                                                            <button type="submit" class="btn btn-primary">PURCHASE</button>
                                                        </div>
                                                    </form>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                                        {{--                        <button type="button" class="btn btn-primary">Save changes</button>--}}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal fade" id="dataModalCenter">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="loading-overlay" id="loadingSpinner1" style="display: none;">
                                                    <div class="loading-spinner"></div>
                                                </div>
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">Data Purchase</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                        </button>
                                                    </div>
                                                    <form id="dataForm1">
                                                        @csrf
                                                        <div class="card card-body">
                                                            <label for="network" class=" requiredField">
                                                                Network<span class="asteriskField">*</span>
                                                            </label>
                                                            <select  name="id" id="firstSelect" class="text-success form-control" required="">
                                                                <option>Select Network</option>
                                                                @if($serve->name == 'mcd')
                                                                    <option value="mtn-data">MTN</option>
                                                                    <option value="glo-data">GLO</option>
                                                                    <option value="etisalat-data">9MOBILE</option>
                                                                @else
                                                                    <option value="MTN">MTN-SME</option>
                                                                    <option value="MTN_CG">MTN-CG</option>
                                                                    <option value="MTN_DG">MTN-DG</option>
                                                                    <option value="GLO">GLO</option>
                                                                    <option value="9MOBILE">9MOBILE</option>
                                                                @endif
                                                                @if ($serve->name == 'mcd')
                                                                    <option value="airtel-data">AIRTEL</option>
                                                                @else
                                                                    <option value="AIRTEL_DG">AIRTEL_DG</option>
                                                                    <option value="AIRTEL_CG">AIRTEL_CG</option>
                                                                @endif
                                                            </select>

                                                            <br>
                                                            <div id="div_id_network" class="form-group">
                                                                <label for="network" class=" requiredField">
                                                                    Select Your Plan<span class="asteriskField">*</span>
                                                                </label>
                                                                <div class="">
                                                                    <select name="productid" id="secondSelect" class="text-success form-control" required>

                                                                        <option>Select Your Plan</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            {{--                                <div id="div_id_network" >--}}
                                                            {{--                                    <label for="network" class=" requiredField">--}}
                                                            {{--                                        Enter Amount<span class="asteriskField">*</span>--}}
                                                            {{--                                    </label>--}}
                                                            {{--                                    <div class="">--}}
                                                            {{--                                        <input type="number" name="amount" id="po" value="" min="100" max="4000" class="text-success form-control" readonly>--}}
                                                            {{--                                    </div>--}}
                                                            {{--                                </div>--}}
                                                            <br/>
                                                            <div id="div_id_network" class="form-group">
                                                                <label for="network" class=" requiredField">
                                                                    Enter Phone Number<span class="asteriskField">*</span>
                                                                </label>
                                                                <div class="">
                                                                    <input type="number" id="number1" name="number" minlength="11" class="text-success form-control" required>
                                                                </div>
                                                            </div>
                                                            <input type="hidden" name="refid" value="<?php echo rand(10000000, 999999999); ?>">
                                                            <button type="submit" class="btn btn-success">Purchase now</button>

                                                            {{--                    <button type="submit" class=" btn" style="color: white;background-color: #28a745">Click Next<span class="load loading"></span></button>--}}
                                                        </div>
                                                    </form>

                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                                                        {{--                        <button type="button" class="btn btn-primary">Save changes</button>--}}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="alert alert-info alert-dismissible fade show p-0 mb-4" role="alert">
                <p class="py-3 px-5 mb-0 border-bottom border-bottom-info-light">
                    <span class="alert-inner--icon me-2"><i class="fe fe-info"></i></span>
                    <strong>Notification:</strong>
                </p>
                <center>
                <p class="py-3 px-5">
                    @foreach($wallet as $wallet1)
                        @if ($wallet1->account_number==1 && $wallet1->account_name==1)
                            <a href='{{route('vertual')}}' class=''>Click this section to get your permanent Virtual Bank Account (Transfer money to the account no to get your protocolcheapdata Wallet funded instantly!)</a>
                   @else
                    <h6 class=''>{{$wallet1->account_name}}</h6>
                    <h5 class=''>Account No:{{$wallet1->account_number}}</h5>
                    <h6 class=''>WEMA-BANK</h6>
                        @endif
                        @endforeach
                        </p>
                </center>

            </div>

    <!-- end graph -->

    <!-- end graph -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {


        // Send the AJAX request
        $('#dataForm').submit(function(e) {
            e.preventDefault(); // Prevent the form from submitting traditionally

            // Get the form data
            var formData = $(this).serialize();
            Swal.fire({
                title: 'Are you sure?',
                text: 'Do you want to buy airtime of ₦' + document.getElementById("amount").value + ' on ' + document.getElementById("number").value +' ?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (result.isConfirmed) {
                    // The user clicked "Yes", proceed with the action
                    // Add your jQuery code here
                    // For example, perform an AJAX request or update the page content
                    $('#loadingSpinner').show();

                    $.ajax({
                        url: "{{ route('buyairtime') }}",
                        type: 'POST',
                        data: formData,
                        success: function(response) {
                            // Handle the success response here
                            $('#loadingSpinner').hide();

                            console.log(response);
                            // Update the page or perform any other actions based on the response

                            if (response.status == 'success') {
                                Swal.fire({
                                    icon: 'success',
                                    title: 'Success',
                                    text: response.message
                                }).then(() => {
                                    location.reload(); // Reload the page
                                });
                            } else {
                                Swal.fire({
                                    icon: 'info',
                                    title: 'Pending',
                                    text: response.message
                                });
                                // Handle any other response status
                            }

                        },
                        error: function(xhr) {
                            $('#loadingSpinner').hide();
                            Swal.fire({
                                icon: 'error',
                                title: 'fail',
                                text: xhr.responseText
                            });
                            // Handle any errors
                            console.log(xhr.responseText);

                        }
                    });

                }
            });
        });
    });

</script>

<script>
    $(document).ready(function() {
        $('#firstSelect').change(function() {
            var selectedValue = $(this).val();
            // Show the loading spinner
            $('#loadingSpinner1').show();
            // Send the selected value to the '/getOptions' route
            $.ajax({
                url: '{{ url('redata') }}/' + selectedValue,
                type: 'GET',
                success: function(response) {
                    // Handle the successful response
                    var secondSelect = $('#secondSelect');
                    $('#loadingSpinner1').hide();
                    // Clear the existing options
                    secondSelect.empty();

                    // Append the received options to the second select box
                    $.each(response, function(index, option) {
                        secondSelect.append('<option  value="' + option.id + '">' + option.plan +  ' --₦' + option.ramount + '</option>');
                    });

                    // Select the desired value dynamically
                    var desiredValue = 'value2'; // Set the desired value here
                    secondSelect.val(desiredValue);
                },
                error: function(xhr) {
                    // Handle any errors
                    console.log(xhr.responseText);
                }
            });
        });
    });

</script>
<script>
    $(document).ready(function() {
        $('#dataForm1').submit(function(e) {
            e.preventDefault(); // Prevent the form from submitting traditionally
            // Get the form data
            var formData = $(this).serialize();
            Swal.fire({
                title: 'Are you sure?',
                text: 'Do you want to buy ' + document.getElementById("secondSelect").options[document.getElementById("secondSelect").selectedIndex].text + ' on ' + document.getElementById("number1").value + '?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (result.isConfirmed) {
                    // The user clicked "Yes", proceed with the action
                    // Add your jQuery code here
                    // For example, perform an AJAX request or update the page content
                    $('#loadingSpinner1').show();
                    $.ajax({
                        url: "{{ route('bill') }}",
                        type: 'POST',
                        data: formData,
                        success: function(response) {
                            // Handle the success response here
                            $('#loadingSpinner1').hide();

                            console.log(response);
                            // Update the page or perform any other actions based on the response

                            if (response.status == 'success') {
                                Swal.fire({
                                    icon: 'success',
                                    title: 'Success',
                                    text: response.message
                                }).then(() => {
                                    location.reload(); // Reload the page
                                });
                            } else {
                                Swal.fire({
                                    icon: 'info',
                                    title: 'Pending',
                                    text: response.message
                                });
                                // Handle any other response status
                            }

                        },
                        error: function(xhr) {
                            $('#loadingSpinner1').hide();
                            Swal.fire({
                                icon: 'error',
                                title: 'fail',
                                text: xhr.responseText
                            });
                            // Handle any errors
                            console.log(xhr.responseText);

                        }
                    });


                }
            });


            // Send the AJAX request
        });
    });

</script>

<!-- DATA TABLE JS-->
<script src="{{asset('assets/plugins/datatable/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/js/dataTables.bootstrap5.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/js/dataTables.buttons.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/js/buttons.bootstrap5.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/js/jszip.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/pdfmake/pdfmake.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/pdfmake/vfs_fonts.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/js/buttons.html5.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/js/buttons.print.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/js/buttons.colVis.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatable/responsive.bootstrap5.min.js')}}"></script>
<script src="{{asset('assets/js/table-data.js')}}"></script>
