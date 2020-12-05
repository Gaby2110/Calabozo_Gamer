<%@page import="modeloVO.rolVO"%>
<%@page import="modeloDAO.rolDAO"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Mirrored from pixner.net/dooplo/dooplo/tournaments.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Nov 2019 20:11:52 GMT -->
    <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <meta  content="Mamunur Rashid">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title> CG - Calabozo Gamer </title>
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
        <section class="breadcrumb-area bc-tournaments">
            <img class="tor" src="assets/images/jugando.png" alt="">
            <img class="bc-img" src="assets/images/torneo.png" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h4 class="title">
                            Torneos
                        </h4>
                        <ul class="breadcrumb-list">
                            <li>
                                <a href="index.html">
                                <i class="fas fa-home"></i>
                                    Inicio
                                </a>
                            </li>
                            <li>
                                <span><i class="fas fa-chevron-right"></i> </span>
                            </li>
                            <li>
                                <a href="tournaments.html">Torneos</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Area End -->
        <!-- Tournaments Area Start -->
        <section class="tournaments">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10">
                        <div class="section-heading">
                            <h5 class="subtitle">
                                ¡Mira algunos de nuestros 
                            </h5>
                            <h2 class="title">
                                ¡Torneos!
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="tournament-time-box">
                            <div class="top-area">
                                <div class="status">
                                    En progreso
                                </div>
                                <h4 class="title">
                                    Torneo Artics
                                </h4>
                                <p class="sub-title">
                                    Videojuego Mortal kombat
                                </p>
                            </div>
                            <div class="timer-area">
                                <h4 class="title">
                                    Termina en
                                </h4>
                                <div class="clock"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="tournament-time-box">
                            <div class="top-area">
                                <div class="status">
                                    En progreso
                                </div>
                                <h4 class="title">
                                    Torneo Imcon
                                </h4>
                                <p class="sub-title">
                                    Videojuego Call of duty
                                </p>
                            </div>
                            <div class="timer-area">
                                <h4 class="title">
                                    Termina en
                                </h4>
                                <div class="clock2"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="info-table">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="main-box">
                                <div class="main-header-area">
                                    <ul class="nav" role="tablist">
                                        <li class="nav-item">
                                            <a>Jugadores Torneo Artics</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tab-content">
                                    <div class="tab-pane fade show active" id="pills-all-player" role="tabpanel" aria-labelledby="pills-all-player-tab">
                                        <div class="inner-table-content">
                                            <div class="header-area">
                                                <ul class="nav" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link active" id="pills-leaderboardr-tab" data-toggle="pill" href="#pills-leaderboardr" role="tab" aria-controls="pills-leaderboardr" aria-selected="true">Jugadores</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" id="pills-more-info-tab" data-toggle="pill" href="#pills-more-info" role="tab" aria-controls="pills-more-info" aria-selected="false">Más Información</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="tab-content">
                                                <div class="tab-pane fade show active" id="pills-leaderboardr" role="tabpanel" aria-labelledby="pills-leaderboardr-tab">
                                                    <div class="inner-table">
                                                        <div class="responsive-table">
                                                            <table class="table">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">Jugador</th>
                                                                        <th scope="col">Puntos</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>
                                                                            Cristian Zapata
                                                                        </td>
                                                                        <td>
                                                                            33528.36
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Johan Moncada
                                                                        </td>
                                                                        <td>
                                                                            32526.20
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Julian Muñoz
                                                                        </td>
                                                                        <td>
                                                                            31518.12
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Daniela Martinez
                                                                        </td>
                                                                        <td>
                                                                            29548.16
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Carolina Mendez
                                                                        </td>
                                                                        <td>
                                                                            25128.11
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>
                                                                            Lina Buitrago
                                                                        </td>
                                                                        <td>
                                                                            23528.36
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="pills-more-info" role="tabpanel" aria-labelledby="pills-more-info-tab">
                                                    <div class="info-content">
                                                        <div class="info-box">
                                                            <h4 class="title">
                                                                Duración Del Torneo
                                                            </h4>
                                                            <p class="text">
                                                                5 Días (Martes 04:01 UTC - Sabado 11:00 UTC)
                                                            </p>
                                                        </div>
                                                        <div class="info-box two">
                                                            <h4 class="title">
                                                                Juego
                                                            </h4>
                                                            <p class="text">
                                                                Mortal Kombat
                                                            </p>
                                                        </div>
                                                        <div class="info-box three">
                                                            <h4 class="title">
                                                                Premio
                                                            </h4>
                                                            <p class="text">
                                                                $60.000 más trofeo
                                                            </p>
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
            </div>
        </section>
        <!-- Tournaments Area End -->
        <!-- Recent Winners Area Start -->
        <section class="recent-winners">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10">
                        <div class="section-heading">
                            <h5 class="subtitle">
                                Revisa Algunos de los
                            </h5>
                            <h2 class="title">
                                Ganadores Recientes
                            </h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-winer">
                            <div class="top-area">
                                <div class="left">
                                    <h4 class="name">
                                        Daniela Martinez
                                    </h4>
                                    <p class="date">
                                        Puntaje 102.019
                                    </p>
                                </div>
                            </div>
                            <div class="bottom-area">
                                <div class="left">
                                    Torneo Imcon
                                </div>
                                <div class="right">
                                    <img src="assets/images/icon2.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4">
                        <div class="single-winer">
                            <div class="top-area">
                                <div class="left">
                                    <h4 class="name">
                                        Cristian Zapata
                                    </h4>
                                    <p class="date">
                                        Puntaje 208.201
                                    </p>
                                </div>
                            </div>
                            <div class="bottom-area">
                                <div class="left">
                                    Torneo Legends
                                </div>
                                <div class="right">
                                    <img src="assets/images/icon2.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4">
                        <div class="single-winer">
                            <div class="top-area">
                                <div class="left">
                                    <h4 class="name">
                                        Carolina Mendez
                                    </h4>
                                    <p class="date">
                                        Puntaje 108.201
                                    </p>
                                </div>
                            </div>
                            <div class="bottom-area">
                                <div class="left">
                                    Torneo Berts
                                </div>
                                <div class="right">
                                    <img src="assets/images/icon2.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
            <!-- Recent Winners Area End -->

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
                                                    <label for="input-password" class="formulario__label">Contraseña</label>
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



    <!-- Mirrored from pixner.net/dooplo/dooplo/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Nov 2019 20:08:12 GMT -->

            <script type="text/javascript">
                var clock = $('.clock').FlipClock(99000 * 24 * 3, {
                    clockFace: 'DailyCounter',
                    countdown: true,
                    showSeconds: false
                });
                var clock = $('.clock2').FlipClock(99900 * 24 * 3, {
                    clockFace: 'DailyCounter',
                    countdown: true,
                    showSeconds: false
                });
            </script>
    </body>
<!-- Mirrored from pixner.net/dooplo/dooplo/tournaments.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 27 Nov 2019 20:11:54 GMT -->
</html>
