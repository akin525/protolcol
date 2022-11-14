@include('layouts.sidebar')
<div class="app-content main-content mt-0">
    <div class="side-app">

        <!-- CONTAINER -->
        <div class="main-container container-fluid">


            <!-- PAGE-HEADER -->
            <div class="page-header">
                <div>
                    <h1 class="page-title">Airtime</h1>
                </div>
                <div class="ms-auto pageheader-btn">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Buy Airtime</li>
                    </ol>
                </div>
            </div>
            <!-- PAGE-HEADER END -->


<div style="padding:90px 15px 20px 15px">
    <!--    <h4 class="align-content-center text-center">Data Subscription</h4>-->





    <!--            <div class="box w3-card-4">-->

    <form action="{{ route('buyairtime') }}" method="post">
        @csrf
        <div class="row">
            <div class="col-sm-8">
                <br>
                <br>
                <div id="AirtimeNote" class="alert alert-danger" style="text-transform: uppercase;font-weight: bold;font-size: 23px;display: none;"></div>
                <div id="AirtimePanel">

                    <div id="div_id_network" class="form-group">
                        <label for="network" class=" requiredField">
                            Network<span class="asteriskField">*</span>
                        </label>
                        <div class="">
                            <select name="id" class="text-success form-control" required="">
                                    <option value="m">MTN</option>
                                    <option value="g">GLO</option>
                                    <option value="a">AIRTEL</option>
                                    <option value="9">9MOBILE</option>

                            </select>
                        </div>
                    </div>
                    <div id="div_id_network" class="form-group">
                        <label for="network" class=" requiredField">
                            Enter Amount<span class="asteriskField">*</span>
                        </label>
                        <div class="">
                            <input type="number" name="amount" min="100" max="4000" class="text-success form-control" required>
                        </div>
                    </div>
                    <div id="div_id_network" class="form-group">
                        <label for="network" class=" requiredField">
                            Enter Phone Number<span class="asteriskField">*</span>
                        </label>
                        <div class="input-group">
                            <input type="number" id="anyme" name="number" minlength="11" class="text-success form-control" required/>
                            <i class="mdi mdi-contacts" style="font-size:20px" onclick="web2app.selectContact(contactCallback);"></i>
                        </div>
                    </div>
                    <input type="hidden" name="refid" value="<?php echo rand(10000000, 999999999); ?>">
                    <button type="submit" class=" btn" style="color: white;background-color: #ff0066" id="btnsubmit"> Purchase Now</button>
                </div>
            </div>
            <div class="col-sm-4 ">
                <br>

                <p>You can use the codes below to check your Airtime Balance!  </p>

                <h6>
                    <ul>
                        <li> MTN *556#</li>
                        <li>MTN [CG] *131*4# or *460*260#</li>
                        <li>9mobile  *223#</li>
                        <li>Airtel *123#</li>
                        <li>Glo *124*0#</li>
                    </ul>
                </h6>
{{--                <center>--}}

{{--                    <iframe width="300" class="widget widget-chat-message"--}}
{{--                            src="https://www.youtube.com/embed/ICXSsBrh9_0?autoplay=1">--}}
{{--                    </iframe>--}}
{{--                </center>--}}





            </div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>

    </form>
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
            // alert(JSON.stringify(data));
        }
        function contactCallback(data) {
            console.log("I am in callback")
            console.log(JSON.stringify(data));
            document.getElementById('anyme').value=data.data;
            // alert(JSON.stringify(data));
        }


    </script>


</div>


</div>


