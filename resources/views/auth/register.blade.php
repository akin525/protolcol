<x-guest-layout>
    <!-- GLOBAL-LOADER -->
    <div id="global-loader">
        <img src="assets/images/loader.svg" class="loader-img" alt="Loader">
    </div>

    <!-- Switcher Icon-->
    <span class="demo-icon">
                <svg class="fe-spin" xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path d="M11.5,7.9c-2.3,0-4,1.9-4,4.2s1.9,4,4.2,4c2.2,0,4-1.9,4-4.1c0,0,0-0.1,0-0.1C15.6,9.7,13.7,7.9,11.5,7.9z M14.6,12.1c0,1.7-1.5,3-3.2,3c-1.7,0-3-1.5-3-3.2c0-1.7,1.5-3,3.2-3C13.3,8.9,14.7,10.3,14.6,12.1C14.6,12,14.6,12.1,14.6,12.1z M20,13.1c-0.5-0.6-0.5-1.5,0-2.1l1.4-1.5c0.1-0.2,0.2-0.4,0.1-0.6l-2.1-3.7c-0.1-0.2-0.3-0.3-0.5-0.2l-2,0.4c-0.8,0.2-1.6-0.3-1.9-1.1l-0.6-1.9C14.2,2.1,14,2,13.8,2H9.5C9.3,2,9.1,2.1,9,2.3L8.4,4.3C8.1,5,7.3,5.5,6.5,5.3l-2-0.4C4.3,4.9,4.1,5,4,5.2L1.9,8.8C1.8,9,1.8,9.2,2,9.4l1.4,1.5c0.5,0.6,0.5,1.5,0,2.1L2,14.6c-0.1,0.2-0.2,0.4-0.1,0.6L4,18.8c0.1,0.2,0.3,0.3,0.5,0.2l2-0.4c0.8-0.2,1.6,0.3,1.9,1.1L9,21.7C9.1,21.9,9.3,22,9.5,22h4.2c0.2,0,0.4-0.1,0.5-0.3l0.6-1.9c0.3-0.8,1.1-1.2,1.9-1.1l2,0.4c0.2,0,0.4-0.1,0.5-0.2l2.1-3.7c0.1-0.2,0.1-0.4-0.1-0.6L20,13.1z M18.6,18l-1.6-0.3c-1.3-0.3-2.6,0.5-3,1.7L13.4,21H9.9l-0.5-1.6c-0.4-1.3-1.7-2-3-1.7L4.7,18l-1.8-3l1.1-1.3c0.9-1,0.9-2.5,0-3.5L2.9,9l1.8-3l1.6,0.3c1.3,0.3,2.6-0.5,3-1.7L9.9,3h3.5l0.5,1.6c0.4,1.3,1.7,2,3,1.7L18.6,6l1.8,3l-1.1,1.3c-0.9,1-0.9,2.5,0,3.5l1.1,1.3L18.6,18z"/></svg>
            </span>


    <!-- PAGE -->
    <div class="page">
        <div>
            <!-- CONTAINER OPEN -->

            <div class="container-login100">
                <center>
                    <div class="card-body">
                        <x-jet-validation-errors class="mb-4" />
                    </div>
                </center>
                <div class="wrap-login100 p-0">
                    <div class="card-body">
                        <form method="POST" action="{{ route('register') }}">
                                @csrf

                                    <span class="login100-form-title">
										Registration
									</span>
                            <div class="col col-login mx-auto text-center">
                                <a href="index.html">
                                    <img src="{{asset('pop.png')}}" class="header-brand-img" alt="">
                                </a>
                            </div>
                                    <div class="wrap-input100 validate-input" data-bs-validate = "Valid email is required: ex@abc.xyz">
                                        <input class="input100" type="email" name="email" placeholder="Email" required>
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
                                            <i class="zmdi zmdi-email" aria-hidden="true"></i>
										</span>
                                    </div>
                                    <div class="wrap-input100 validate-input" data-bs-validate = "Valid email is required: ex@abc.xyz" >
                                        <input class="input100" type="text" name="username" placeholder="username" required>
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
                                            <i class="mdi mdi-account" aria-hidden="true"></i>
										</span>
                                    </div>
                                    <div class="wrap-input100 validate-input" data-bs-validate = "Valid email is required: ex@abc.xyz">
                                        <input class="input100" type="text" name="name" placeholder="Full Name" required>
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
                                            <i class="mdi mdi-account" aria-hidden="true"></i>
										</span>
                                    </div>
                                    <div class="wrap-input100 validate-input" data-bs-validate = "Valid email is required: ex@abc.xyz">
                                        <input class="input100" type="number" name="phone" placeholder="Phone No" required>
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
                                            <i class="mdi mdi-phone" aria-hidden="true"></i>
										</span>
                                    </div>
                                    <div class="wrap-input100 validate-input" data-bs-validate = "Password is required">
                                        <input class="input100" type="password" name="password" placeholder="Password" required>
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
											<i class="zmdi zmdi-lock" aria-hidden="true"></i>
										</span>
                                    </div>
                                    <div class="wrap-input100 validate-input" data-bs-validate = "Password is required">
                                        <input class="input100" type="password" name="password_confirmation" placeholder="Confirmed-Password" required>
                                        <span class="focus-input100"></span>
                                        <span class="symbol-input100">
											<i class="zmdi zmdi-lock" aria-hidden="true"></i>
										</span>
                                    </div>
                                    <label class="custom-control custom-checkbox mt-4">
                                        <input type="checkbox" class="custom-control-input">
                                        <span class="custom-control-label">Agree the <a href="#">terms and policy</a></span>
                                    </label>
                                    <div class="container-login100-form-btn">
                                        <button type="submit"  class="login100-form-btn btn-primary">
                                            Register
                                        </button>
                                    </div>
                                    <div class="text-center pt-3">
                                        <p class="text-dark mb-0">Already have account?<a href="{{route('login')}}" class="text-primary ms-1">Sign In</a></p>
                                    </div>
                        </form>
                        <div class="card-footer">
                            <div class="d-flex justify-content-center my-3">
                                <a href="javascript:void(0)" class="social-login  text-center me-4">
                                    <i class="fa fa-google"></i>
                                </a>
                                <a href="javascript:void(0)" class="social-login  text-center me-4">
                                    <i class="fa fa-facebook"></i>
                                </a>
                                <a href="javascript:void(0)" class="social-login  text-center">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- CONTAINER CLOSED -->
            </div>
        </div>
        <!-- END PAGE -->





</x-guest-layout>
