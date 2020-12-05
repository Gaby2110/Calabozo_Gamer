<%@page import="modeloVO.rolVO"%>
<%@page import="modeloDAO.rolDAO"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta  content="Mamunur Rashid">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> CG - Calabozo Gamer</title>
        <!-- favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.html" type="image/x-icon">
        <!-- bootstrap -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Plugin css -->
        <link rel="stylesheet" href="assets/css/plugin.css">
        <!-- stylesheet -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- responsive -->
        <link rel="stylesheet" href="assets/css/responsive.css">
    </head>
    <body>
        <!-- preloader area start -->
        <div class="preloader" id="preloader">
            <div class="loader loader-1">
                <div class="loader-outter"></div>
                <div class="loader-inner"></div>
            </div>
        </div>
    <!-- preloader area end -->
    <!-- Header Area Start  -->
        <header class="header">
            <!-- Top Header Area Start -->
            <section class="top-header">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="content">
                                <div class="left-content">
                                    <ul class="left-list">
                                        <li>
                                            <p>
                                                <i class="fas fa-envelope"></i>	info_cg@gmail.com
                                            </p>
                                        </li>
                                        <li>
                                            <a>
                                                <div class="search">
                                                    <input type="submit" value="">
                                                    <input id="formGroupExampleInput" type="text" value="" placeholder="Search...">			
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                
                                <div class="right-content">
                                    <ul class="right-list">			
                                        <li>
                                            <a href="#" class="sign-in"  data-toggle="modal" data-target="#signin"> Registrate</a>		
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Top Header Area End -->
            <!--Main-Menu Area Start-->
            <div class="mainmenu-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">                 
                            <nav class="navbar navbar-expand-lg navbar-light">
                                <a class="navbar-brand" href="index.html"></a>
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main_menu" aria-controls="main_menu" aria-label="Toggle navigation">
                                        <span class="navbar-toggler-icon"></span>
                                    </button>
                                
                                    <div class="collapse navbar-collapse fixed-height" id="main_menu">
                                        <img class="logo" src="assets/images/calabozo-large-blanco.png" alt="">
                                        <ul class="navbar-nav ml-auto">
                                            <li class="nav-item">
                                                <a class="nav-link" href="index.jsp">Inicio
                                                <div class="mr-hover-effect"></div></a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="play.jsp">Categorias y Juegos 
                                                <div class="mr-hover-effect"></div></a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="tournaments.jsp">Torneos
                                                <div class="mr-hover-effect"></div></a>
                                            </li>
                                        </ul>
                                        <a href="#" class="mybtn1" data-toggle="modal" data-target="#login">
                                            <i class="fas fa-user"></i> Inicio Sesión
                                        </a>	
                                    </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!--Main-Menu Area Start-->
        </header>
            <!-- Breadcrumb Area Start -->
            <section class="breadcrumb-area play">
                <img class="playi" src="assets/images/jugando.png" alt="">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="title">
                                Categorias y Videojuegos
                            </h4>
                            <ul class="breadcrumb-list">
                                <li>
                                    <a href="index.jsp">
                                        <i class="fas fa-home"></i>
                                        Inicio
                                    </a>
                                </li>
                                <li>
                                    <span><i class="fas fa-chevron-right"></i> </span>
                                </li>
                                <li>
                                    <a href="play.html">Categorias y Videojuegos</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Breadcrumb Area End -->
            <!-- Play Games Area Start -->
            <section class="play-games">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="gaming-activities">
                                <div class="gaming-activities-inner">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-activities">
                                                <div class="top-area">
                                                    <div class="left">
                                                        <div class="icon">
                                                            <img src="assets/images/pacmann.png" alt="">
                                                            <span>
                                                                4.3 <i class="fas fa-star"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <h4 class="title">
                                                            Pacman
                                                        </h4>
                                                        <p class="text">
                                                            Rol
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="bottom-area">
                                                    <h4 class="title">Personas Jugando:</h4>
                                                    <div class="players-count">
                                                        <ul class="players-list">
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                        </ul>
                                                        <div class="count-num">
                                                            40+
                                                        </div>
                                                    </div>
                                                    <div class="pp">
                                                        <p>60 Personas Jugando</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-activities">
                                                <div class="top-area">
                                                    <div class="left">
                                                        <div class="icon">
                                                            <img src="assets/images/mario.png" alt="">
                                                            <span>
                                                                4.5 <i class="fas fa-star"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <h4 class="title">
                                                            Mario Bross
                                                        </h4>
                                                        <p class="text">
                                                            Aventura
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="bottom-area">
                                                    <h4 class="title">Personas Jugando:</h4>
                                                    <div class="players-count">
                                                        <ul class="players-list">
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                        </ul>
                                                        <div class="count-num">
                                                            40+
                                                        </div>
                                                    </div>
                                                    <div class="pp">
                                                        <p>80 personas Jugando</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-activities">
                                                <div class="top-area">
                                                    <div class="left">
                                                        <div class="icon">
                                                            <img src="assets/images/tetris.png" alt="">
                                                            <span>
                                                                4.5 <i class="fas fa-star"></i>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <div class="right">
                                                        <h4 class="title">
                                                            Tetris
                                                        </h4>
                                                        <p class="text">
                                                            Puzzle
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="bottom-area">
                                                    <h4 class="title">Personas Jugando:</h4>
                                                    <div class="players-count">
                                                        <ul class="players-list">
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                            <li>
                                                                <img src="assets/images/play/people.png" alt="">
                                                            </li>
                                                        </ul>
                                                        <div class="count-num">
                                                            40+
                                                        </div>
                                                    </div>
                                                    <div class="pp">
                                                        <p>50 Personas Jugando</p>
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
                
                <div class="all-games">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-center">
                                <ul class="nav" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="pills-tab1-tab" data-toggle="pill" href="#pills-tab1" role="tab" aria-controls="pills-tab1" aria-selected="true">
                                            <div class="icon">
                                                <img class="one" src="assets/images/play/ic6.png" alt="">
                                                <img class="two" src="assets/images/play/ic66.png" alt="">
                                            </div>
                                            <span>Mejores Juegos</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-tab2-tab" data-toggle="pill" href="#pills-tab2" role="tab" aria-controls="pills-tab2" aria-selected="false">
                                            <div class="icon">
                                                <img class="one" src="assets/images/play/ic1.png" alt="">
                                                <img class="two" src="assets/images/play/ic11.png" alt="">
                                            </div>
                                            <span>Nuevos</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-tab3-tab" data-toggle="pill" href="#pills-tab3" role="tab" aria-controls="pills-tab3" aria-selected="false">
                                            <div class="icon">
                                                <img class="one" src="assets/images/play/ic2.png" alt="">
                                                <img class="two" src="assets/images/play/ic22.png" alt="">
                                            </div>
                                            <span>Aventura</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-tab4-tab" data-toggle="pill" href="#pills-tab4" role="tab" aria-controls="pills-tab4" aria-selected="false">
                                            <div class="icon">
                                            <img class="one" src="assets/images/play/ic4.png" alt="">
                                            <img class="two" src="assets/images/play/ic44.png" alt="">
                                            </div>
                                            <span>Cartas</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" id="pills-tab6-tab" data-toggle="pill" href="#pills-tab6" role="tab" aria-controls="pills-tab6" aria-selected="false">
                                            <div class="icon">
                                                <img class="one" src="assets/images/play/ic5.png" alt="">
                                                <img class="two" src="assets/images/play/ic55.png" alt="">
                                            </div>
                                            <span>Otros</span>
                                        </a>
                                    </li>
                                </ul>
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-tab1" role="tabpanel" aria-labelledby="pills-tab1-tab">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/gta.png" alt="">
                                                <img class="gtal" src="assets/images/gtal.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/mariob.png" alt="">
                                                <img class="mariol" src="assets/images/mariol.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/cod.png" alt="">
                                                <img class="codl" src="assets/images/cl.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img  class="f" src="assets/images/fortnite.png" alt="">
                                            </div>
                                        </div>
                                            
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img class="lol" src="assets/images/lol.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img class="f" src="assets/images/freefire.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="pills-tab2" role="tabpanel" aria-labelledby="pills-tab2-tab">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon1.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon2.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon3.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon1.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon2.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon3.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="tab-pane fade" id="pills-tab3" role="tabpanel" aria-labelledby="pills-tab3-tab">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon1.png" alt="">
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon2.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon3.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon1.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon2.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon3.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="tab-pane fade" id="pills-tab4" role="tabpanel" aria-labelledby="pills-tab4-tab">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon1.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon2.png" alt="">
                                            </div>                                          
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">                                        
                                                <img src="assets/images/game/icon3.png" alt="">                                           
                                            </div>                                        
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon1.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon2.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon3.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="tab-pane fade" id="pills-tab5" role="tabpanel" aria-labelledby="pills-tab5-tab">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon1.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon2.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon3.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon1.png" alt="">
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon2.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon3.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="tab-pane fade" id="pills-tab6" role="tabpanel" aria-labelledby="pills-tab6-tab">
                                    <div class="row">
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon1.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon2.png" alt="">
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon3.png" alt="">
                                            </div>
                                        </div>

                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon1.png" alt="">
                                            </div>
                                        </div>

                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon2.png" alt="">
                                            </div>
                                        </div>

                                        <div class="col-lg-4 col-md-6">
                                            <div class="single-game">
                                                <img src="assets/images/game/icon3.png" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Play Games Area End -->
        <!-- Footer Area Start -->
        <footer class="footer" id="footer">
            <div class="copy-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="left-area">
                                    <p>Copyright © 2020. Todos los derechos reservados por <a href="#">CG</a></p>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <ul class="copright-area-links">
                                <li>
                                    <a href="#">Termino de uso</a>
                                </li>
                                <li>
                                    <a href="#">Registrarse</a>
                                </li>
                                <li>
                                    <a href="#">Iniciar Sesión</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer> 
            <!-- Footer Area End -->

            <!-- Back to Top Start -->
        <div class="bottomtotop">
            <i class="fas fa-chevron-right"></i>
        </div>
        <!-- Back to Top End -->
        <!-- Login Area Start -->
        <div class="modal fade login-modal" id="login" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div class="modal-body">
                        <div class="logo-area">
                            <img class="logoi" src="assets/images/calabozo-small-blanco.png" alt="">
                        </div>
                        <div class="header-area">
                            <h4 class="title">¡Es bueno tenerte de vuelta!</h4>
                            <p class="sub-title">Ingresa Tus Datos.</p>
                        </div>
                        <div class="form-area">
                            <form method="post" action="usuario">
                                <div class="form-group">
                                    <label for="login-input-email">Correo*</label>
                                    <input type="email" name="textCorreo" class="input-field" placeholder="Ingresa Tu Correo">
                                </div>
                                <div class="form-group">
                                    <label for="login-input-password">Contraseña*</label>
                                    <input type="password" name="textClave" class="input-field" placeholder="Ingresa Tu Contraseña">
                                </div>
                                <div class="form-group">
                                    <div class="box">
                                        <div class="right">
                                            <a href="#">
                                                ¿Olvidaste tu contraseña?
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="mybtn1i"> Ingresar </button>
                                    <input type="hidden" value="2" name="opcion">
                                </div>
                                <div>
                                    <%if (request.getAttribute("MensajeError")!=null){%>
                                    ${MensajeError}
                                    <%}%>   
                                </div>
                            </form>
                        </div>
                        <div class="form-footer">
                            <p>¿No Tienes Una Cuenta? 
                                <a href="signin">Crear Cuenta <i class="fas fa-angle-double-right"></i></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Login Area End --> 
        <!-- SignIn Area Start -->
        <div class="modal fade login-modal sign-in" id="signin" tabindex="-1" role="dialog" aria-labelledby="signin" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered " role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div class="modal-body">
                        <div class="logo-area">
                            <img class="logoi" src="assets/images/calabozo-small-blanco.png" alt="">
                        </div>
                        <div class="header-area">
                            <h4 class="title">¡Es bueno tenerte aquí!</h4>
                            <p class="sub-title">Ingresa Tus Datos</p>
                        </div>
                        <div class="form-area">
                            <form method="post" action="usuario">
                                <div class="form-group">
                                    <label>Identificación*</label>
                                    <input type="text" name="textId" class="input-field" placeholder="Ingresa Tu Id" required="" minlegth="4" maxlength="16">
                                </div>
                                <div class="form-group">
                                    <label>Nombre*</label>
                                    <input type="text" name="textNombre" class="input-field" placeholder="Ingresa Tu Nombre" minlegth="4" maxlength="20">
                                </div>
                                <div class="form-group">
                                    <label>Apellido*</label>
                                    <input type="text" name="textApellido" class="input-field" placeholder="Ingresa Tu Apellido" required="" minlegth="4" maxlength="20">
                                </div>
                                <div class="form-group">
                                    <label>Telefono*</label>
                                    <input type="text" name="textTelefono" class="input-field" placeholder="Ingresa Tu Telefono" required="" minlegth="4" maxlength="12">
                                </div>
                                <div class="form-group " id="grupo_Correo">
                                    <label for="input-email" class="formulario__label">Correo</label>
                                    <input type="email" name="textCorreo" class="input-field"  id="email"  placeholder="correo@correo.com" >
                                    <span id="emailOK"></span>
                                </div>
                                <div class="form-group " id="grupo_Contraseña">
                                    <label for="input-password"class="formulario__label">Contraseña</label>
                                    <input type="password" name="textClave" class="input-field"  id="password" required="" minlegth="4" maxlength="25">
                                </div>
                                <div class="form-group">
                                    <select name="textrol">
                                        <%
                                            rolDAO rolDAO = new rolDAO();
                                            for(rolVO rolVO : rolDAO.listar()){
                                        %>
                                                <option value="<%= rolVO.getId_rol() %>"> <%= rolVO.getNombre_rol()%></option> 
                                        <% } %>  
                                    </select>
                                </div>
                                <div class="form-group">
                                    <button class="mybtn1i"> Registrarme </button>
                                    <input type="hidden" value="1" name="opcion">
                                </div>
                                <div>
                                    <%if (request.getAttribute("MensajeError")!=null){%>
                                        ${MensajeError}
                                    <%}else{%>  
                                        ${MensajeExito}
                                    <%}%>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- SignIn Area End -->
        <!-- jquery -->
            <script src="assets/js/jquery.js"></script>
            <!-- popper -->
            <script src="assets/js/popper.min.js"></script>
            <!-- bootstrap -->
            <script src="assets/js/bootstrap.min.js"></script>
            <!-- plugin js-->
            <script src="assets/js/plugin.js"></script>

            <!-- MpusemoverParallax JS-->
            <script src="assets/js/TweenMax.js"></script>
            <script src="assets/js/mousemoveparallax.js"></script>
            <!-- main -->
            <script src="assets/js/main.js"></script>
    </body>
</html>