<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>Stexo - Responsive Admin & Dashboard Template | Themesdesign</title>
    <meta content="Responsive admin theme build on top of Bootstrap 4" name="description" />
    <meta content="Themesdesign" name="author" />
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="assets/css/style.css" rel="stylesheet" type="text/css">


</head>

<body>

    <div class="header-bg">
        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container-fluid">

                    <!-- Logo-->
                    <div>
                        <a href="index.html" class="logo">
                            <span class="logo-light">
                                    <i class="mdi mdi-camera-control"></i> Stexo
                            </span>
                        </a>
                    </div>
                    <!-- End Logo-->

                    <div class="menu-extras topbar-custom navbar p-0">
                        <ul class="list-inline d-none d-lg-block mb-0">
                            <li class="hide-phone app-search float-left">
                                <form role="search" class="app-search">
                                    <div class="form-group mb-0">
                                        <input type="text" class="form-control" placeholder="Search..">
                                        <button type="submit"><i class="fa fa-search"></i></button>
                                    </div>
                                </form>
                            </li>
                        </ul>

                        <ul class="navbar-right ml-auto list-inline float-right mb-0">
                            <!-- language-->
                            <li class="dropdown notification-list list-inline-item d-none d-md-inline-block">
                                <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <img src="assets/images/flags/us_flag.jpg" class="mr-2" height="12" alt="" /> English <span class="mdi mdi-chevron-down"></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated language-switch">
                                    <a class="dropdown-item" href="#"><img src="assets/images/flags/french_flag.jpg" alt="" height="16" /><span> French </span></a>
                                    <a class="dropdown-item" href="#"><img src="assets/images/flags/spain_flag.jpg" alt="" height="16" /><span> Spanish </span></a>
                                    <a class="dropdown-item" href="#"><img src="assets/images/flags/russia_flag.jpg" alt="" height="16" /><span> Russian </span></a>
                                    <a class="dropdown-item" href="#"><img src="assets/images/flags/germany_flag.jpg" alt="" height="16" /><span> German </span></a>
                                    <a class="dropdown-item" href="#"><img src="assets/images/flags/italy_flag.jpg" alt="" height="16" /><span> Italian </span></a>
                                </div>
                            </li>

                            <!-- full screen -->
                            <li class="dropdown notification-list list-inline-item d-none d-md-inline-block">
                                <a class="nav-link waves-effect" href="#" id="btn-fullscreen">
                                    <i class="mdi mdi-arrow-expand-all noti-icon"></i>
                                </a>
                            </li>

                            <!-- notification -->
                            <li class="dropdown notification-list list-inline-item">
                                <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <i class="mdi mdi-bell-outline noti-icon"></i>
                                    <span class="badge badge-pill badge-danger noti-icon-badge">3</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-menu-lg px-1">
                                    <!-- item-->
                                    <h6 class="dropdown-item-text">
                                            Notifications
                                        </h6>
                                    <div class="slimscroll notification-item-list">
                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item active">
                                            <div class="notify-icon bg-success"><i class="mdi mdi-cart-outline"></i></div>
                                            <p class="notify-details"><b>Your order is placed</b><span class="text-muted">Dummy text of the printing and typesetting industry.</span></p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon bg-danger"><i class="mdi mdi-message-text-outline"></i></div>
                                            <p class="notify-details"><b>New Message received</b><span class="text-muted">You have 87 unread messages</span></p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon bg-info"><i class="mdi mdi-filter-outline"></i></div>
                                            <p class="notify-details"><b>Your item is shipped</b><span class="text-muted">It is a long established fact that a reader will</span></p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon bg-success"><i class="mdi mdi-message-text-outline"></i></div>
                                            <p class="notify-details"><b>New Message received</b><span class="text-muted">You have 87 unread messages</span></p>
                                        </a>

                                        <!-- item-->
                                        <a href="javascript:void(0);" class="dropdown-item notify-item">
                                            <div class="notify-icon bg-warning"><i class="mdi mdi-cart-outline"></i></div>
                                            <p class="notify-details"><b>Your order is placed</b><span class="text-muted">Dummy text of the printing and typesetting industry.</span></p>
                                        </a>

                                    </div>
                                    <!-- All-->
                                    <a href="javascript:void(0);" class="dropdown-item text-center notify-all text-primary">
                                            View all <i class="fi-arrow-right"></i>
                                        </a>
                                </div>
                            </li>

                            <li class="dropdown notification-list list-inline-item">
                                <div class="dropdown notification-list nav-pro-img">
                                    <a class="dropdown-toggle nav-link arrow-none nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                        <img src="assets/images/users/user-4.jpg" alt="user" class="rounded-circle">
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                        <!-- item-->
                                        <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle"></i> Profile</a>
                                        <a class="dropdown-item" href="#"><i class="mdi mdi-wallet"></i> My Wallet</a>
                                        <a class="dropdown-item d-block" href="#"><span class="badge badge-success float-right">11</span><i class="mdi mdi-settings"></i> Settings</a>
                                        <a class="dropdown-item" href="#"><i class="mdi mdi-lock-open-outline"></i> Lock screen</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item text-danger" href="#"><i class="mdi mdi-power text-danger"></i> Logout</a>
                                    </div>
                                </div>
                            </li>

                            <li class="menu-item dropdown notification-list list-inline-item">
                                <!-- Mobile menu toggle-->
                                <a class="navbar-toggle nav-link">
                                    <div class="lines">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                    </div>
                                </a>
                                <!-- End mobile menu toggle-->
                            </li>

                        </ul>

                    </div>
                    <!-- end menu-extras -->

                    <div class="clearfix"></div>

                </div>
                <!-- end container -->
            </div>
            <!-- end topbar-main -->

            <!-- MENU Start -->
            <div class="navbar-custom">
                <div class="container-fluid">

                    <div id="navigation">

                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">

                            <li class="has-submenu">
                                <a href="index.html"><i class="icon-accelerator"></i> Dashboard</a>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="icon-pencil-ruler"></i> UI Elements <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="ui-alerts.html">Alerts</a></li>
                                            <li><a href="ui-badge.html">Badge</a></li>
                                            <li><a href="ui-buttons.html">Buttons</a></li>
                                            <li><a href="ui-cards.html">Cards</a></li>
                                            <li><a href="ui-dropdowns.html">Dropdowns</a></li>
                                            <li><a href="ui-navs.html">Navs</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <ul>
                                            <li><a href="ui-tabs-accordions.html">Tabs &amp; Accordions</a></li>
                                            <li><a href="ui-modals.html">Modals</a></li>
                                            <li><a href="ui-images.html">Images</a></li>
                                            <li><a href="ui-progressbars.html">Progress Bars</a></li>
                                            <li><a href="ui-pagination.html">Pagination</a></li>
                                            <li><a href="ui-popover-tooltips.html">Popover & Tooltips</a></li>
                                        </ul>
                                    </li>

                                    <li>
                                        <ul>
                                            <li><a href="ui-spinner.html">Spinner</a></li>
                                            <li><a href="ui-carousel.html">Carousel</a></li>
                                            <li><a href="ui-video.html">Video</a></li>
                                            <li><a href="ui-typography.html">Typography</a></li>
                                            <li><a href="ui-grid.html">Grid</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="icon-life-buoy"></i> Components <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                <ul class="submenu">
                                    <li class="has-submenu">
                                        <a href="#">Email</a>
                                        <ul class="submenu">
                                            <li><a href="email-inbox.html">Inbox</a></li>
                                            <li><a href="email-read.html">Email Read</a></li>
                                            <li><a href="email-compose.html">Email Compose</a></li>
                                        </ul>
                                    </li>

                                    <li>
                                        <a href="calendar.html">Calendar </a>
                                    </li>
                                    <li class="has-submenu">
                                        <a href="#">Forms</a>
                                        <ul class="submenu">
                                            <li><a href="form-elements.html">Form Elements</a></li>
                                            <li><a href="form-validation.html">Form Validation</a></li>
                                            <li><a href="form-advanced.html">Form Advanced</a></li>
                                            <li><a href="form-editors.html">Form Editors</a></li>
                                            <li><a href="form-uploads.html">Form File Upload</a></li>
                                            <li><a href="form-mask.html">Form Mask</a></li>
                                            <li><a href="form-summernote.html">Summernote</a></li>
                                            <li><a href="form-xeditable.html">Form Xeditable</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="#">Charts </a>
                                        <ul class="submenu">
                                            <li><a href="charts-morris.html">Morris Chart</a></li>
                                            <li><a href="charts-chartist.html">Chartist Chart</a></li>
                                            <li><a href="charts-chartjs.html">Chartjs Chart</a></li>
                                            <li><a href="charts-flot.html">Flot Chart</a></li>
                                            <li><a href="charts-c3.html">C3 Chart</a></li>
                                            <li><a href="charts-other.html">Jquery Knob Chart</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="#">Tables </a>
                                        <ul class="submenu">
                                            <li><a href="tables-basic.html">Basic Tables</a></li>
                                            <li><a href="tables-datatable.html">Data Table</a></li>
                                            <li><a href="tables-responsive.html">Responsive Table</a></li>
                                            <li><a href="tables-editable.html">Editable Table</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="#">Icons</a>
                                        <ul class="submenu">
                                            <li><a href="icons-material.html">Material Design</a></li>
                                            <li><a href="icons-fontawesome.html">Font Awesome</a></li>
                                            <li><a href="icons-outline.html">Outline Icons</a></li>
                                            <li><a href="icons-themify.html">Themify Icons</a></li>
                                        </ul>
                                    </li>

                                    <li class="has-submenu">
                                        <a href="#">Maps</a>
                                        <ul class="submenu">
                                            <li><a href="maps-google.html"> Google Map</a></li>
                                            <li><a href="maps-vector.html"> Vector Map</a></li>
                                        </ul>
                                    </li>

                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="icon-diamond"></i> Advanced UI <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="advanced-alertify.html">Alertify</a></li>
                                            <li><a href="advanced-rating.html">Rating</a></li>
                                            <li><a href="advanced-nestable.html">Nestable</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <ul>
                                            <li><a href="advanced-rangeslider.html">Range Slider</a></li>
                                            <li><a href="advanced-sweet-alert.html">Sweet-Alert</a></li>
                                            <li><a href="advanced-lightbox.html">Lightbox</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="icon-paper-sheet"></i> Pages <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                <ul class="submenu megamenu">

                                    <li>
                                        <ul>
                                            <li><a href="pages-pricing.html">Pricing</a></li>
                                            <li><a href="pages-invoice.html">Invoice</a></li>
                                            <li><a href="pages-timeline.html">Timeline</a></li>
                                            <li><a href="pages-faqs.html">FAQs</a></li>
                                            <li><a href="pages-maintenance.html">Maintenance</a></li>
                                            <li><a href="pages-comingsoon.html">Coming Soon</a></li>
                                            <li><a href="pages-starter.html">Starter Page</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <ul>
                                            <li><a href="pages-login.html">Login</a></li>
                                            <li><a href="pages-register.html">Register</a></li>
                                            <li><a href="pages-recoverpw.html">Recover Password</a></li>
                                            <li><a href="pages-lock-screen.html">Lock Screen</a></li>
                                            <li><a href="pages-404.html">Error 404</a></li>
                                            <li><a href="pages-500.html">Error 500</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                        <!-- End navigation menu -->
                    </div>
                    <!-- end #navigation -->
                </div>
                <!-- end container -->
            </div>
            <!-- end navbar-custom -->
        </header>
        <!-- End Navigation Bar-->

    </div>
    <!-- header-bg -->

    <div class="wrapper">
        <div class="container-fluid">
            <!-- Page-Title -->
            <div class="page-title-box">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <h4 class="page-title">Cards</h4>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-right">
                            <li class="breadcrumb-item"><a href="javascript:void(0);">Stexo</a></li>
                            <li class="breadcrumb-item"><a href="javascript:void(0);">UI Elements</a></li>
                            <li class="breadcrumb-item active">Cards</li>
                        </ol>
                    </div>
                </div>
                <!-- end row -->
            </div>

            <div class="row">
                <div class="col-md-6 col-xl-3">

                    <!-- Simple card -->
                    <div class="card m-b-30">
                        <img class="card-img-top img-fluid" src="assets/images/small/img-1.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title font-16 mt-0">Card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make
                                up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary waves-effect waves-light">Button</a>
                        </div>
                    </div>

                </div><!-- end col -->

                <div class="col-md-6 col-xl-3">

                    <div class="card m-b-30">
                        <img class="card-img-top img-fluid" src="assets/images/small/img-2.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title font-16 mt-0">Card title</h4>
                            <p class="card-text">Some quick example text to build on the card title and make
                                up the bulk of the card's content.</p>
                        </div>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">Cras justo odio</li>
                            <li class="list-group-item">Dapibus ac facilisis in</li>
                        </ul>
                        <div class="card-body">
                            <a href="#" class="card-link">Card link</a>
                            <a href="#" class="card-link">Another link</a>
                        </div>
                    </div>

                </div><!-- end col -->

                <div class="col-md-6 col-xl-3">

                    <div class="card m-b-30">
                        <img class="card-img-top img-fluid" src="assets/images/small/img-3.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make
                                up the bulk of the card's content.</p>
                        </div>
                    </div>

                </div><!-- end col -->


                <div class="col-md-6 col-xl-3">

                    <div class="card m-b-30">
                        <div class="card-body">
                            <h4 class="card-title font-16 mt-0">Card title</h4>
                            <h6 class="card-subtitle font-14 text-muted">Support card subtitle</h6>
                        </div>
                        <img class="img-fluid" src="assets/images/small/img-4.jpg" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">Some quick example text to build on the card title and make
                                up the bulk of the card's content.</p>
                            <a href="#" class="card-link">Card link</a>
                            <a href="#" class="card-link">Another link</a>
                        </div>
                    </div>

                </div><!-- end col -->
            </div>
            <!-- end row -->

            <div class="row">
                <div class="col-md-6">
                    <div class="card m-b-30 card-body">
                        <h3 class="card-title font-16 mt-0">Special title treatment</h3>
                        <p class="card-text">With supporting text below as a natural lead-in to additional
                            content.</p>
                        <a href="#" class="btn btn-primary waves-effect waves-light">Go somewhere</a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card m-b-30 card-body">
                        <h3 class="card-title font-16 mt-0">Special title treatment</h3>
                        <p class="card-text">With supporting text below as a natural lead-in to additional
                            content.</p>
                        <a href="#" class="btn btn-primary waves-effect waves-light">Go somewhere</a>
                    </div>
                </div>
            </div>

                <!-- end row -->

                


            <div class="row">
                <div class="col-xl-4">
                    <div class="card m-b-30 card-body">
                        <h4 class="card-title font-16 mt-0">Special title treatment</h4>
                        <p class="card-text">With supporting text below as a natural lead-in to additional
                            content.</p>
                        <a href="#" class="btn btn-primary waves-effect waves-light">Go somewhere</a>
                    </div>
                </div>

                <div class="col-xl-4 ">
                    <div class="card m-b-30 card-body text-center">
                        <h4 class="card-title font-16 mt-0">Special title treatment</h4>
                        <p class="card-text">With supporting text below as a natural lead-in to additional
                            content.</p>
                        <a href="#" class="btn btn-primary waves-effect waves-light">Go somewhere</a>
                    </div>
                </div>

                <div class="col-xl-4">
                    <div class="card m-b-30 card-body text-right">
                        <h4 class="card-title font-16 mt-0">Special title treatment</h4>
                        <p class="card-text">With supporting text below as a natural lead-in to additional
                            content.</p>
                        <a href="#" class="btn btn-primary waves-effect waves-light">Go somewhere</a>
                    </div>
                </div>
            </div>

            <!-- end row -->

            <div class="row">
                <div class="col-xl-4">
                    <div class="card m-b-30">
                        <h5 class="card-header mt-0">Featured</h5>
                        <div class="card-body">
                            <h4 class="card-title font-16 mt-0">Special title treatment</h4>
                            <p class="card-text">With supporting text below as a natural lead-in to
                                additional content.</p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4">
                    <div class="card m-b-30">
                        <div class="card-header">
                            Quote
                        </div>
                        <div class="card-body">
                            <blockquote class="card-bodyquote">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                    erat a ante.</p>
                                <footer class="blockquote-footer font-12">
                                    Someone famous in <cite title="Source Title">Source Title</cite>
                                </footer>
                            </blockquote>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4">
                    <div class="card m-b-30">
                        <div class="card-header">
                            Featured
                        </div>
                        <div class="card-body">
                            <h4 class="card-title font-16 mt-0">Special title treatment</h4>
                            <p class="card-text">With supporting text below as a natural lead-in to
                                additional content.</p>
                            <a href="#" class="btn btn-primary waves-effect waves-light">Go somewhere</a>
                        </div>
                        <div class="card-footer text-muted">
                            2 days ago
                        </div>
                    </div>
                </div>
            </div>

            <!-- end row -->


            <div class="row">
                <div class="col-xl-4">
                    <div class="card m-b-30">
                        <img class="card-img-top img-fluid" src="assets/images/small/img-5.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title font-16 mt-0">Card title</h4>
                            <p class="card-text">This is a wider card with supporting text below as a
                                natural lead-in to additional content. This content is a little bit
                                longer.</p>
                            <p class="card-text">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4">
                    <div class="card m-b-30">
                        <div class="card-body">
                            <h4 class="card-title font-16 mt-0">Card title</h4>
                            <p class="card-text">This is a wider card with supporting text below as a
                                natural lead-in to additional content. This content is a little bit
                                longer.</p>
                            <p class="card-text">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </p>
                        </div>
                        <img class="card-img-bottom img-fluid" src="assets/images/small/img-6.jpg" alt="Card image cap">
                    </div>
                </div>

                <div class="col-xl-4">
                    <div class="card m-b-30">
                        <img class="card-img img-fluid" src="assets/images/small/img-7.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h4 class="card-title text-white font-16 mt-0">Card title</h4>
                            <p class="card-text text-light">This is a wider card with supporting text below as a
                                natural lead-in to additional content. This content is a little bit
                                longer.</p>
                            <p class="card-text">
                                <small class="text-white">Last updated 3 mins ago</small>
                            </p>
                        </div>
                    </div>
                </div>

            </div>

            <!-- end row --> 

            <div class="row">
                <div class="col-xl-4">
                    <div class="card m-b-30 text-white" style="background-color: #333; border-color: #333;">
                        <div class="card-body">
                            <h3 class="card-title font-16 mt-0">Special title treatment</h3>
                            <p class="card-text">With supporting text below as a natural lead-in to
                                additional content.</p>
                            <a href="#" class="btn btn-primary">Button</a>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4">
                    <div class="card m-b-30 text-white bg-primary">
                        <div class="card-body">
                            <blockquote class="card-bodyquote mb-0">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                    erat a ante.</p>
                                <footer class="blockquote-footer text-white font-12">
                                    Someone famous in <cite title="Source Title">Source Title</cite>
                                </footer>
                            </blockquote>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4">
                    <div class="card m-b-30 text-white bg-success">
                        <div class="card-body">
                            <blockquote class="card-bodyquote mb-0">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                    erat a ante.</p>
                                <footer class="blockquote-footer text-white font-12">
                                    Someone famous in <cite title="Source Title">Source Title</cite>
                                </footer>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end row -->


            <div class="row">
                <div class="col-xl-4">
                    <div class="card m-b-30 text-white bg-info">
                        <div class="card-body">
                            <blockquote class="card-bodyquote mb-0">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                    erat a ante.</p>
                                <footer class="blockquote-footer text-white font-12">
                                    Someone famous in <cite title="Source Title">Source Title</cite>
                                </footer>
                            </blockquote>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4">
                    <div class="card m-b-30 text-white bg-warning">
                        <div class="card-body">
                            <blockquote class="card-bodyquote mb-0">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                    erat a ante.</p>
                                <footer class="blockquote-footer text-white font-12">
                                    Someone famous in <cite title="Source Title">Source Title</cite>
                                </footer>
                            </blockquote>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4">
                    <div class="card m-b-30 text-white bg-danger">
                        <div class="card-body">
                            <blockquote class="card-bodyquote mb-0">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                    erat a ante.</p>
                                <footer class="blockquote-footer text-white font-12">
                                    Someone famous in <cite title="Source Title">Source Title</cite>
                                </footer>
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end row -->


            <div class="row">
                <div class="col-12">
                    <div class="card-group">
                        <div class="card m-b-30">
                            <img class="card-img-top img-fluid" src="assets/images/small/img-1.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title font-16 mt-0">Card title</h4>
                                <p class="card-text">This is a wider card with supporting text below as a
                                    natural lead-in to additional content. This content is a little bit
                                    longer.</p>
                                <p class="card-text">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </p>
                            </div>
                        </div>
                        <div class="card m-b-30">
                            <img class="card-img-top img-fluid" src="assets/images/small/img-2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title font-16 mt-0">Card title</h4>
                                <p class="card-text">This card has supporting text below as a natural
                                    lead-in to additional content.</p>
                                <p class="card-text">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </p>
                            </div>
                        </div>
                        <div class="card m-b-30">
                            <img class="card-img-top img-fluid" src="assets/images/small/img-3.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title font-16 mt-0">Card title</h4>
                                <p class="card-text">This is a wider card with supporting text below as a
                                    natural lead-in to additional content. This card has even longer content
                                    than the first to show that equal height action.</p>
                                <p class="card-text">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end row -->


            <div class="row">
                <div class="col-12">
                    <h5 class="m-t-20 m-b-30">Decks</h5>
                    <div class="card-deck-wrapper">
                        <div class="card-deck">
                            <div class="card m-b-30">
                                <img class="card-img-top img-fluid" src="assets/images/small/img-4.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title font-16 mt-0">Card title</h4>
                                    <p class="card-text">This is a longer card with supporting text below as
                                        a natural lead-in to additional content. This content is a little
                                        bit longer.</p>
                                    <p class="card-text">
                                        <small class="text-muted">Last updated 3 mins ago</small>
                                    </p>
                                </div>
                            </div>
                            <div class="card m-b-30">
                                <img class="card-img-top img-fluid" src="assets/images/small/img-5.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title font-16 mt-0">Card title</h4>
                                    <p class="card-text">This card has supporting text below as a natural
                                        lead-in to additional content.</p>
                                    <p class="card-text">
                                        <small class="text-muted">Last updated 3 mins ago</small>
                                    </p>
                                </div>
                            </div>
                            <div class="card m-b-30">
                                <img class="card-img-top img-fluid" src="assets/images/small/img-6.jpg" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title font-16 mt-0">Card title</h4>
                                    <p class="card-text">This is a wider card with supporting text below as
                                        a natural lead-in to additional content. This card has even longer
                                        content than the first to show that equal height action.</p>
                                    <p class="card-text">
                                        <small class="text-muted">Last updated 3 mins ago</small>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end row -->


            <div class="row">
                <div class="col-12">
                    <h5 class="m-t-20 m-b-30">Columns</h5>
                    <div class="card-columns">
                        <div class="card m-b-30">
                            <img class="card-img-top img-fluid" src="assets/images/small/img-1.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title font-16 mt-0">Card title that wraps to a new line</h4>
                                <p class="card-text">This is a longer card with supporting text below as a
                                    natural lead-in to additional content. This content is a little bit
                                    longer.</p>
                            </div>
                        </div>
                        <div class="card m-b-30 card-body">
                            <blockquote class="card-bodyquote mb-0">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                    erat a ante.</p>
                                <footer class="blockquote-footer font-12">
                                    Someone famous in <cite title="Source Title">Source Title</cite>
                                </footer>
                            </blockquote>
                        </div>
                        <div class="card m-b-30">
                            <img class="card-img-top img-fluid" src="assets/images/small/img-2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title font-16 mt-0">Card title</h4>
                                <p class="card-text">This card has supporting text below as a natural
                                    lead-in to additional content.</p>
                                <p class="card-text">
                                    <small class="text-muted">Last updated 3 mins ago</small>
                                </p>
                            </div>
                        </div>
                        <div class="card m-b-30 card-body">
                            <blockquote class="card-bodyquote mb-0">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                    erat.</p>
                                <footer class="blockquote-footer font-12">
                                    Someone famous in <cite title="Source Title">Source Title</cite>
                                </footer>
                            </blockquote>
                        </div>
                        <div class="card m-b-30 card-body">
                            <h4 class="card-title font-16 mt-0">Card title</h4>
                            <p class="card-text">This card has supporting text below as a natural lead-in to
                                additional content.</p>
                            <p class="card-text">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </p>
                        </div>
                        <div class="card m-b-30">
                            <img class="card-img img-fluid" src="assets/images/small/img-3.jpg" alt="Card image cap">
                        </div>
                        <div class="card m-b-30 card-body text-right">
                            <blockquote class="card-bodyquote mb-0">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere
                                    erat a ante.</p>
                                <footer class="blockquote-footer font-12">
                                    Someone famous in <cite title="Source Title">Source Title</cite>
                                </footer>
                            </blockquote>
                        </div>
                        <div class="card m-b-30 card-body">
                            <h4 class="card-title font-16 mt-0">Card title</h4>
                            <p class="card-text">This is a wider card with supporting text below as a
                                natural lead-in to additional content. This card has even longer content
                                than the first to show that equal height action.</p>
                            <p class="card-text">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end row --> 

        </div>
        <!-- end container-fluid -->
    </div>
    <!-- end wrapper -->

    <!-- Footer -->
    <footer class="footer">
        � 2019 - 2020 Stexo <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by Themesdesign</span>.
    </footer>

    <!-- End Footer -->

    <!-- jQuery  -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/waves.min.js"></script>

    <!-- App js -->
    <script src="assets/js/app.js"></script>

</body>

</html>