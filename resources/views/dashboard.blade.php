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
            <div class="alert alert-success alert-dismissible fade show p-0 mb-4" role="alert">
                <p class="py-3 px-5 mb-0 border-bottom border-bottom-info-light">
                    <span class="alert-inner--icon me-2"><i class="fe fe-thumbs-up"></i></span>
                    <strong>{{$greet}} {{Auth::user()->name}}</strong>
                </p>
                <p class="py-3 px-5">Important Notification: {{$me->message}}.</p>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">??</span>
                </button>
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
    <br>
            <!-- ROW-1 -->
            <div class="row">
                <div class="col-lg-6 col-sm-12 col-md-7 col-xl-4">
                    <div class="card overflow-hidden">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h3 class="mb-2 fw-semibold">???{{number_format(intval($wallet1->balance *1))}}</h3>
                                    <p class="text-muted fs-13 mb-0">Wallet Balance</p>
                                    <p class="text-muted mb-0 mt-2 fs-12">
                                                        <span class="icn-box text-success fw-semibold fs-13 me-1">
{{--                                                            <i class='fa fa-money'></i>--}}
{{--                                                            42%</span>--}}
{{--                                        since last month--}}
                                    </p>
                                </div>
                                <div class="col col-auto top-icn dash">
                                    <div class="counter-icon bg-primary dash ms-auto box-shadow-primary">
{{--                                        <svg xmlns="http://www.w3.org/2000/svg" class="fill-white" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path d="M12,8c-2.2091675,0-4,1.7908325-4,4s1.7908325,4,4,4c2.208252-0.0021973,3.9978027-1.791748,4-4C16,9.7908325,14.2091675,8,12,8z M12,15c-1.6568604,0-3-1.3431396-3-3s1.3431396-3,3-3c1.6561279,0.0018311,2.9981689,1.3438721,3,3C15,13.6568604,13.6568604,15,12,15z M21.960022,11.8046875C19.9189453,6.9902344,16.1025391,4,12,4s-7.9189453,2.9902344-9.960022,7.8046875c-0.0537109,0.1246948-0.0537109,0.2659302,0,0.390625C4.0810547,17.0097656,7.8974609,20,12,20s7.9190063-2.9902344,9.960022-7.8046875C22.0137329,12.0706177,22.0137329,11.9293823,21.960022,11.8046875z M12,19c-3.6396484,0-7.0556641-2.6767578-8.9550781-7C4.9443359,7.6767578,8.3603516,5,12,5s7.0556641,2.6767578,8.9550781,7C19.0556641,16.3232422,15.6396484,19,12,19z"/></svg>--}}
                                        <i class='mdi mdi-wallet'></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12 col-md-7 col-xl-4">
                    <div class="card overflow-hidden">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h3 class="mb-2 fw-semibold">???{{number_format(intval($totaldeposite *1))}}</h3>
                                    <p class="text-muted fs-13 mb-0">Total Deposit</p>
                                    <p class="text-muted mb-0 mt-2 fs-12">
                                                        <span class="icn-box text-danger fw-semibold fs-13 me-1">
{{--                                                            <i class='fa fa-long-arrow-down'></i>--}}
{{--                                                            12%</span>--}}
{{--                                        since last month--}}
                                    </p>
                                </div>
                                <div class="col col-auto top-icn dash">
                                    <div class="counter-icon bg-secondary dash ms-auto box-shadow-secondary">
{{--                                        <svg xmlns="http://www.w3.org/2000/svg" class="fill-white" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path d="M19.5,7H16V5.9169922c0-2.2091064-1.7908325-4-4-4s-4,1.7908936-4,4V7H4.5C4.4998169,7,4.4996338,7,4.4993896,7C4.2234497,7.0001831,3.9998169,7.223999,4,7.5V19c0.0018311,1.6561279,1.3438721,2.9981689,3,3h10c1.6561279-0.0018311,2.9981689-1.3438721,3-3V7.5c0-0.0001831,0-0.0003662,0-0.0006104C19.9998169,7.2234497,19.776001,6.9998169,19.5,7z M9,5.9169922c0-1.6568604,1.3431396-3,3-3s3,1.3431396,3,3V7H9V5.9169922z M19,19c-0.0014038,1.1040039-0.8959961,1.9985962-2,2H7c-1.1040039-0.0014038-1.9985962-0.8959961-2-2V8h3v2.5C8,10.776123,8.223877,11,8.5,11S9,10.776123,9,10.5V8h6v2.5c0,0.0001831,0,0.0003662,0,0.0005493C15.0001831,10.7765503,15.223999,11.0001831,15.5,11c0.0001831,0,0.0003662,0,0.0006104,0C15.7765503,10.9998169,16.0001831,10.776001,16,10.5V8h3V19z"/></svg>--}}
                                        <i class='mdi mdi-wallet'></i>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12 col-md-7 col-xl-4">
                    <div class="card overflow-hidden">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <h3 class="mb-2 fw-semibold">???{{number_format(intval($bill *1))}}</h3>
                                    <p class="text-muted fs-13 mb-0">Total Bills</p>
                                    <p class="text-muted mb-0 mt-2 fs-12">
                                                        <span class="icn-box text-success fw-semibold fs-13 me-1">
{{--                                                            <i class='fa fa-long-arrow-up'></i>--}}
{{--                                                            27%</span>--}}
{{--                                        since last month--}}
                                    </p>
                                </div>
                                <div class="col col-auto top-icn dash">
                                    <div class="counter-icon bg-info dash ms-auto box-shadow-info">
{{--                                        <svg xmlns="http://www.w3.org/2000/svg" class="fill-white" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path d="M7.5,12C7.223877,12,7,12.223877,7,12.5v5.0005493C7.0001831,17.7765503,7.223999,18.0001831,7.5,18h0.0006104C7.7765503,17.9998169,8.0001831,17.776001,8,17.5v-5C8,12.223877,7.776123,12,7.5,12z M19,2H5C3.3438721,2.0018311,2.0018311,3.3438721,2,5v14c0.0018311,1.6561279,1.3438721,2.9981689,3,3h14c1.6561279-0.0018311,2.9981689-1.3438721,3-3V5C21.9981689,3.3438721,20.6561279,2.0018311,19,2z M21,19c-0.0014038,1.1040039-0.8959961,1.9985962-2,2H5c-1.1040039-0.0014038-1.9985962-0.8959961-2-2V5c0.0014038-1.1040039,0.8959961-1.9985962,2-2h14c1.1040039,0.0014038,1.9985962,0.8959961,2,2V19z M12,6c-0.276123,0-0.5,0.223877-0.5,0.5v11.0005493C11.5001831,17.7765503,11.723999,18.0001831,12,18h0.0006104c0.2759399-0.0001831,0.4995728-0.223999,0.4993896-0.5v-11C12.5,6.223877,12.276123,6,12,6z M16.5,10c-0.276123,0-0.5,0.223877-0.5,0.5v7.0005493C16.0001831,17.7765503,16.223999,18.0001831,16.5,18h0.0006104C16.7765503,17.9998169,17.0001831,17.776001,17,17.5v-7C17,10.223877,16.776123,10,16.5,10z"/></svg>--}}
                                        <i class='mdi mdi-wallet'></i>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ROW-1 END-->
            <div class="col-12 col-sm-12">
                <div class="card product-sales-main">
                    <div class="card-header border-bottom">
                        <h3 class="card-title mb-0">Task List</h3>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered text-nowrap border-bottom w-100" id="responsive-datatable">
                                <thead>
                                            <tr role="row">
                                                <th class="bg-transparent border-bottom-0 wp-15 sorting sorting_asc" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Assigned To: activate to sort column descending" style="width: 145px;">Username</th>
                                                <th class="bg-transparent border-bottom-0 sorting" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" aria-label="Task: activate to sort column ascending" style="width: 239.906px;">Plan</th>
                                                <th class="bg-transparent border-bottom-0 sorting" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" aria-label="Project: activate to sort column ascending" style="width: 91.0781px;">Amount</th>
                                                <th class="bg-transparent border-bottom-0 sorting" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" aria-label="Project: activate to sort column ascending" style="width: 91.0781px;">Phone No</th>
                                                <th class="bg-transparent border-bottom-0 sorting" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" aria-label="Project: activate to sort column ascending" style="width: 91.0781px;">Payment_Ref</th>
                                                <th class="bg-transparent border-bottom-0 sorting" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" aria-label="Project: activate to sort column ascending" style="width: 91.0781px;">Token</th>
                                                <th class="bg-transparent border-bottom-0 sorting" tabindex="0" aria-controls="data-table" rowspan="1" colspan="1" aria-label="Due Date: activate to sort column ascending" style="width: 62.8125px;">Due Date</th>
                                            </tr>
                                            </thead>
                                            <tbody class="table-body">
                                            @foreach($bil2 as $re)
                                                <tr class="odd">
                                                <td class="sorting_1">
                                                    {{$re->username}}
                                                </td>
                                                <td class="text-muted fs-14 fw-semibold"><a href="#" class="text-dark" data-bs-target="#Vertically" data-bs-toggle="modal">{{$re->plan}}</a></td>
                                                <td class="text-muted fs-14 fw-semibold"><a href="#" class="text-dark" data-bs-target="#Vertically" data-bs-toggle="modal">{{$re->amount}}</a></td>
                                                <td class="text-muted fs-14 fw-semibold"><a href="#" class="text-dark" data-bs-target="#Vertically" data-bs-toggle="modal">{{$re->phone}}</a></td>
                                                <td class="text-muted fs-14 fw-semibold"><a href="#" class="text-dark" data-bs-target="#Vertically" data-bs-toggle="modal">{{$re->refid}}</a></td>
                                                <td class="text-muted fs-13">{{$re->token}}</td>
                                                <td class="text-danger fs-14 fw-semibold">{{$re->date}}</td>
                                                </tr>
                                            @endforeach
                                            </tbody>
                                        </table></div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="data-table_info" role="status" aria-live="polite">Showing 1 to 5 of 5 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="data-table_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="data-table_previous"><a href="#" aria-controls="data-table" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="data-table" data-dt-idx="1" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item next disabled" id="data-table_next"><a href="#" aria-controls="data-table" data-dt-idx="2" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

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
