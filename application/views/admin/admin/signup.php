<style>
    input {
        position: relative;
    }

    img {
        position: absolute;
        float: left;
        left: 85%;
        top: 33.55%;
        cursor: pointer;
    }
</style>
<!-- head -->
<?php $this->load->view('admin/admin/head', $this->data) ?>

<body class="g-sidenav-show  bg-gray-100">
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg position-absolute top-0 z-index-3 w-100 shadow-none my-3  navbar-transparent mt-4">
        <div class="container">
            <a class="navbar-brand font-weight-bolder ms-lg-0 ms-3 text-white" href="<?php echo public_url('admin/pages') ?>/)dashboards/default.html">
                LocalWare SignUp
            </a>
            <button class="navbar-toggler shadow-none ms-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon mt-2">
                    <span class="navbar-toggler-bar bar1"></span>
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                </span>
            </button>

        </div>
    </nav>
    <!-- End Navbar -->
    <section class="min-vh-100 mb-8">
        <div class="page-header align-items-start min-vh-50 pt-5 pb-11 m-3 border-radius-lg" style="background-image: url('<?php echo public_url('admin/assets') ?>/img/curved-images/curved14.jpg');">
            <span class="mask bg-gradient-dark opacity-6"></span>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5 text-center mx-auto">
                        <h1 class="text-white mb-2 mt-5">Welcome!</h1>
                        <p class="text-lead text-white">Use these awesome forms to login or create new account in your project for free.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row mt-lg-n10 mt-md-n11 mt-n10">
                <div class="col-xl-4 col-lg-5 col-md-7 mx-auto">
                    <div class="card z-index-0">
                        <div class="card-header text-center pt-4">
                            <h5>Register</h5>
                        </div>


                        <div class="mt-2 position-relative text-center">
                            <p class="text-sm font-weight-bold mb-1 text-secondary text-border d-inline z-index-2 bg-white px-3">
                                Admin
                            </p>
                        </div>


                        <div class="card-body">
                            <form role="form text-left" method="post" action="">
                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="UserName" name="username">
                                    <div>
                                        <?php echo form_error('username') ?>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <input id="pass" type="password" class="form-control" placeholder="Password" name="password">
                                    <div>
                                        <!--<img onclick="showpass()" src="<?php echo public_url('admin/assets') ?>/img/eye-outline.svg" alt="" style="height:18px;"> -->
                                        <?php echo form_error('password') ?>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <input type="text" class="form-control" placeholder="Name" name="name">
                                    <div>
                                        <?php echo form_error('name') ?>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <input type="email" class="form-control" placeholder="Email" name="email">
                                    <div>
                                        <?php echo form_error('email') ?>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <input type="phone" class="form-control" placeholder="Phone" name="phone">
                                    <div>
                                        <?php echo form_error('phone') ?>
                                    </div>
                                </div>
                                <div class="mb-3">

                                    <label for=""><span>Permissions: </span></label>
                                    <div>
                                        <?php foreach ($config_permissions as $controller => $actions) : ?>
                                            <div>
                                                <b><?php echo $controller ?> :</b>
                                                <?php foreach ($actions as $action) : ?>
                                                    <input type="checkbox" name="permissions[<?php echo $controller ?>][]" value="<?php echo $action ?>" /><?php echo $action ?>

                                                <?php endforeach; ?>
                                            </div>
                                        <?php endforeach; ?>
                                    </div>
                                </div>

                                <div class="form-check form-check-info text-left">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked>
                                    <label class="form-check-label" for="flexCheckDefault">
                                        I agree the <a href="javascript:;" class="text-dark font-weight-bolder">Terms and Conditions</a>
                                    </label>
                                </div>
                                <div class="text-center">
                                    <input type="submit" class="btn bg-gradient-dark w-100 my-4 mb-2" value="Sign up" />
                                </div>
                                <p class="text-sm mt-3 mb-0">Already have an account? <a href="" class="text-dark font-weight-bolder">Sign in</a></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- -------- START FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
    <footer class="footer py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-4 mx-auto text-center">
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">
                        Company
                    </a>
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">
                        About Us
                    </a>
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">
                        Team
                    </a>
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">
                        Products
                    </a>
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">
                        Blog
                    </a>
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-5 me-3 mb-sm-0 mb-2">
                        Pricing
                    </a>
                </div>
                <div class="col-lg-8 mx-auto text-center mb-4 mt-2">
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-4 me-4">
                        <span class="text-lg fab fa-dribbble"></span>
                    </a>
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-4 me-4">
                        <span class="text-lg fab fa-twitter"></span>
                    </a>
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-4 me-4">
                        <span class="text-lg fab fa-instagram"></span>
                    </a>
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-4 me-4">
                        <span class="text-lg fab fa-pinterest"></span>
                    </a>
                    <a href="javascript:;" target="_blank" class="text-secondary me-xl-4 me-4">
                        <span class="text-lg fab fa-github"></span>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-8 mx-auto text-center mt-1">
                    <p class="mb-0 text-secondary">
                        Copyright © <script>
                            document.write(new Date().getFullYear())
                        </script> Soft by LocalWare
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- -------- END FOOTER 3 w/ COMPANY DESCRIPTION WITH LINKS & SOCIAL ICONS & COPYRIGHT ------- -->
    <!--   Core JS Files   -->
    <script src="<?php echo public_url('admin/assets') ?>/)js/core/popper.min.js"></script>
    <script src="<?php echo public_url('admin/assets') ?>/)js/core/bootstrap.min.js"></script>
    <script src="<?php echo public_url('admin/assets') ?>/)js/plugins/perfect-scrollbar.min.js"></script>
    <script src="<?php echo public_url('admin/assets') ?>/)js/plugins/smooth-scrollbar.min.js"></script>
    <script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script>
    <!-- Github buttons -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="<?php echo public_url('admin/assets') ?>/)js/soft-ui-dashboard.min.js?v=1.0.3"></script>
    <script type="text/javascript">
        var x = true;

        function showpass() {
            if (x) {
                document.getElementById('pass').type = "text";
                x = false;

            } else {
                document.getElementById('pass').type = "password";
                x = true;
            }
        }
    </script>
</body>
