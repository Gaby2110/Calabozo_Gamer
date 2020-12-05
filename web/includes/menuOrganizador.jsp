<div class="header-bg">
        <!-- Navigation Bar-->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container-fluid">

                   
                    <div class="menu-extras topbar-custom navbar p-0">
                    <img id="logo" src="assets\images\calabozo-large-blanco.png" height="50">
                        <ul class="list-inline d-none d-lg-block mb-0">
                            <li class="hide-phone app-search float-left">
                                <form role="search" class="app-search">
                                    <div class="form-group mb-0">
                                        <input type="text" class="form-control" placeholder="Buscar..">
                                        <button type="submit"><i class="fa fa-search"></i></button>
                                    </div>
                                </form>
                            </li>
                        </ul>

                        <ul class="navbar-right ml-auto list-inline float-right mb-0">
                            <!-- language-->
                           

                            <!-- full screen -->
                            <li class="dropdown notification-list list-inline-item d-none d-md-inline-block">
                                <a class="nav-link waves-effect" href="#" id="btn-fullscreen">
                                    <i class="mdi mdi-arrow-expand-all noti-icon"></i>
                                </a>
                            </li>

                            <!-- notification -->
                            <li class="dropdown notification-list list-inline-item">
                                <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false">
                                    <i class="mdi mdi-bell-outline noti-icon"></i>
                                    <span class="badge badge-pill badge-danger noti-icon-badge">5</span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-menu-lg px-1">
                                    <!-- item-->
                                    <h6 class="dropdown-item-text">
                                            Notificaciones
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
                                    <a class="dropdown-toggle nav-link arrow-none nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false">
                                        <img src="horizontal/assets/images/users/user-4.jpg" alt="user" class="rounded-circle">
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                        <!-- item-->
                                        <a class="dropdown-item" href="perfil.jsp">
                                            <form method="post" action="usuario">           
                                                <input type="hidden" value="<%=id%>" name="textId">
                                                <button class="btn btn-outline-secondary waves-effect">Perfil</button>
                                                <input type="hidden" value="5" name="opcion">
                                            </form>
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            <%= Nombre %>
                                        </a>
                                        <a class="dropdown-item" href="#">
                                            <%= Rol %>
                                        </a>
                                                
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item text-danger" href="logaut.jsp"><i class="mdi mdi-power text-danger"></i> Cerrar Sesión</a>
                                    </div>
                                </div>
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
                                <a href="menu.jsp"><i class="icon-accelerator"></i>Inicio</a>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="icon-pencil-ruler"></i> Videojuego <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="videojuego.jsp">Registrar videojuego</a></li>
                                            <li><a href="m_videojuego.jsp">Videojuego</a></li>
                                        </ul>   
                                    </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="icon-life-buoy"></i> Categoria Videojuego <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="catvj.jsp">Registrar categoria</a></li>
                                            <li><a href="m_catvj.jsp">Categoria</a></li>
                                        </ul> 
                                    </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="icon-diamond"></i> Torneo <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="torneo.jsp">Registrar torneo</a></li>
                                            <li><a href="m_torneo.jsp">Torneo</a></li>
                                        </ul> 
                                    </li>
                                </ul>
                            </li>

                            <li class="has-submenu">
                                <a href="#"><i class="icon-paper-sheet"></i> Encuentro <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="encuentro.jsp">Registrar encuentro</a></li>
                                            <li><a href="programacion.jsp">Programacion</a></li>
                                            <li><a href="resultados.jsp">Resultados</a></li>
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