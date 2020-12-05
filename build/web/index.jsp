<%@page import="modeloVO.rolVO"%>
<%@page import="modeloDAO.rolDAO"%>
<%@page import="modeloVO.usuarioVO"%>
<%@page import="modeloDAO.usuarioDAO"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <!-- <meta name="forntEnd-Developer" content="Mamunur Rashid">-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> Calabozo Gamer</title>
        <!-- favicon -->
        <link rel="shortcut icon" href="assets/images/calabozo-icono.png">
        <!-- bootstrap -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <!-- Plugin css -->
        <link rel="stylesheet" href="assets/css/plugin.css">
        <!-- stylesheet -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- responsive -->
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script src="assets/js/jquery.min.js"></script>
        <!-- jQuery (necessary JavaScript plugins) -->
        <script src="assets/js/bootstrap.js"></script>
        <!-- links de contraseña -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
                                        </li>
                                        <li>
                                            <div class="search">
                                                <input type="submit" value="">
                                                <input id="formGroupExampleInput" type="text" value="" placeholder="Search...">			
                                            </div>
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
                                    <div>
                                        <a href="#" class="mybtn1" data-toggle="modal" data-target="#login">
                                            <i class="fas fa-user"></i> Inicio Sesión
                                        </a>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!--Main-Menu Area Start-->
        </header>
            <div class="hero-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 d-flex align-self-center">
                            <div class="left-content">
                                <div class="content">
                                    <h1 class="subtitle">
                                        Calabozo Gamer
                                    </h1>
                                    <p class="text">
                                        Crea, planea o compite en distintos torneos, sus 
                                        diversas categorias y múltiples juegos. 
                                    </p>
                                    <p class="text">
                                        ¡Escoge tu rol y diviertete!
                                    </p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-7">
                            <div class="hero-img2 d-block d-md-none">
                                <img src="assets/images/heroarea.png" alt="">
                            </div>
                            <div class="hero-img d-none d-md-block">
                                <img class="img-fluid full-image" src="assets/images/heroarea.png" alt="">
                                <img class="shape phone" src="assets/images/h-shapes/phone.png" alt="">
                                <img class="shape man" src="assets/images/h-shapes/man222.png" alt="">
                                <img class="shape ripple" src="assets/images/h-shapes/ripple.png" alt="">
                                <img class="shape ripple2" src="assets/images/h-shapes/ripple1.png" alt="">
                                <img class="shape bitcoin1" src="assets/images/h-shapes/bitcoin1.png" alt="">
                                <img class="shape bitcoin2" src="assets/images/h-shapes/bitcoin2.png" alt="">
                                <img class="shape shape-icon" src="assets/images/h-shapes/shape.png" alt="">
                                <img class="shape award-bg" src="assets/images/h-shapes/award/bg.png" alt="">
                                <img class="shape award" src="assets/images/h-shapes/award/award.png" alt="">
                                <img class="shape gift-bg" src="assets/images/h-shapes/giftbox/bg.png" alt="">
                                <img class="shape gift" src="assets/images/h-shapes/giftbox/gift.png" alt="">
                                <img class="shape shield-bg" src="assets/images/h-shapes/shield/bg.png" alt="">
                                <img class="shape shield" src="assets/images/h-shapes/shield/shield.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Featured Game Area Start -->
            <section class="featured-game">
                <!-- Features Area Start -->
                <div class="features">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <!-- Affiliate Process area Start -->
                                <section class="affiliate-process">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="single-process">
                                                    <img src="assets/images/organizador.png" alt="">
                                                    <span class="num"></span>
                                                    <h4 class="title">
                                                        Organizador
                                                    </h4>
                                                    <p class="text">
                                                        Crea Torneos y planea todo acerca de ellos,¡Que esperas!
                                                    </p>
                                                </div>
                                            </div>
                                            
                                            <div class="col-lg-4">
                                                <div class="single-process">
                                                    <img src="assets/images/gamer.png" alt="">
                                                    <span class="num"></span>
                                                    <h4 class="title">
                                                        Gamer
                                                    </h4>
                                                    <p class="text">
                                                        Inscribete a torneos juega y gana con tus videojuegos favoritos
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!-- Affiliate Process area End -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Features Area End -->
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-md-10">
                            <div class="section-heading">
                                <h5 class="subtitle">
                                    Planea o Juega con
                                </h5> 
                                <h2 class="title">
                                    Algunas Categorias
                                </h2>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="game-slider">
                                
                                <div class="item">
                                    <div class="single-game">
                                        <img src="assets/images/terror.png" alt="">
                                        <a href="#" class="mybtn2">Terror</a>
                                    </div>
                                </div>
                                
                                <div class="item">
                                    <div class="single-game">
                                        <img class="puzzle" src="assets/images/puzzlee.png" alt="">
                                        <a href="#" class="mybtn2">Puzzle</a>
                                    </div>
                                </div>
                                
                                <div class="item">
                                    <div class="single-game">
                                        <img class="lucha" src="assets/images/lucha.png" alt="">
                                        <a href="#" class="mybtn2">Lucha</a>
                                    </div>
                                </div>
                                
                                <div class="item">
                                    <div class="single-game">
                                        <img src="assets/images/accion.png" alt="">
                                        <a href="#" class="mybtn2">Accion</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Featured Game Area	End -->

            <!-- Latest Activities Area Start -->
            <section class="activities">
                <img class="shape shape1" src="assets/images/people/shape1.png" alt="">
                <img class="shape shape2" src="assets/images/people/shape2.png" alt="">
                <img class="shape shape3" src="assets/images/people/shape3.png" alt="">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-md-10">
                            <div class="section-heading">
                                <h5 class="subtitle">
                                    Se uno de los ganadores 
                                </h5>
                                <h2 class="title">
                                    Compite y Gana
                                </h2>
                                <p class="text">
                                </p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="tab-menu-area">
                                <ul class="nav nav-lend mb-3" id="pills-tab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="pills-all-bets-tab" data-toggle="pill" href="#pills-all-bets" role="tab" aria-controls="pills-all-bets" aria-selected="true">Algunos puntajes</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="tab-content" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="pills-all-bets" role="tabpanel" aria-labelledby="pills-all-bets-tab">
                                    <div class="responsive-table">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Gamer</th>
                                                    <th scope="col">ID</th>
                                                    <th scope="col">Torneo</th>
                                                    <th scope="col">Juego</th>
                                                    <th scope="col">Premio</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td> Cristian Zapata </td>
                                                    <td> b799b8724b </td>
                                                    <td> legendss </td>
                                                    <td> LOL </td>
                                                    <td>
                                                        <img src="assets/images/icon4.png" alt="">
                                                        0.00000051
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td> Johan Moncada </td>
                                                    <td>  b799b8724b </td>
                                                    <td> ztax </td>
                                                    <td> Fifa </td>
                                                    <td>
                                                        <img src="assets/images/icon1.png" alt="">
                                                        0.00000051
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td> Julian Muñoz </td>
                                                    <td> b799b8724b </td>
                                                    <td> Artics </td>
                                                    <td> Mortal Kombat </td>
                                                    <td>
                                                        <img src="assets/images/icon2.png" alt="">
                                                        0.00000051
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td> Daniela Martinez </td>
                                                    <td> b799b8724b </td>
                                                    <td> Imcon </td>
                                                    <td> Call of duty </td>
                                                    <td>
                                                        <img src="assets/images/icon3.png" alt="">
                                                        0.00000051
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td> Carolina Mendez </td>
                                                    <td> b799b8724b </td>
                                                    <td> Berts </td>
                                                    <td> Legends of zelda </td>
                                                    <td>
                                                        <img src="assets/images/icon4.png" alt="">
                                                        0.00000051
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td> Lina Buitrago </td>
                                                    <td> b799b8724b </td>
                                                    <td> Asifets </td>
                                                    <td> Just Dance </td>
                                                    <td>
                                                        <img src="assets/images/icon5.png" alt="">
                                                        0.00000051
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- Fun fact Area Start -->
                                <div class="funfact">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="single-fun">
                                                    <img src="assets/images/jugador.png" alt="">
                                                    <div class="count-area">
                                                        <div class="count">93K</div>
                                                    </div>
                                                    <p> Gamers </p>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="single-fun">
                                                    <img src="assets/images/juegos.png" alt="">
                                                    <div class="count-area">
                                                        <div class="count">99+</div>
                                                    </div>
                                                    <p> Juegos </p>
                                                </div>
                                            </div>
                                            <div class="col-lg-4">
                                                <div class="single-fun">
                                                    <img src="assets/images/ganadores.png" alt="">
                                                    <div class="count-area">
                                                        <div class="count">70+</div>
                                                    </div>
                                                    <p> Ganadores </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Fun fact Area End -->
            </section> 
            <!-- Latest Activities Area End -->
            <!-- Get Start Area Start -->
            <section class="get-start">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 d-flex align-self-center">
                            <div class="left-area">
                                <div class="section-heading">
                                    <h5 class="subtitle"> Decenas de torneos </h5>
                                    <h2 class="title "> Inscribete </h2>
                                    <p class="text"> Y saca al ganador que llevas dentro </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="right-image">
                                <img src="assets/images/ganador.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </section> 

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
                                                    <input id="input-email" type="email" name="textCorreo" class="input-field" placeholder="Ingresa Tu Correo">
                                    </div>
                                    <div class="form-group">
                                                    <label for="login-input-password">Contraseña*</label>
                                                    <input id="txtPassword" type="Password" class="input-field" placeholder="Ingresa Tu Contraseña" name="textClave"> 
                                                    <button id="show_password" class="btn btn-primary" type="button" onclick="mostrarPassword()"> <span class="fa fa-eye-slash icon"></span> </button>
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
                                        <input type="text" name="textTelefono" class="input-field" placeholder="Ingresa Tu Telefono" required="" >
                                    </div>
                                    <div class="form-group " id="grupo_Correo">
                                        <label for="input-email" class="formulario__label">Correo</label>
                                        <input type="email" name="textCorreo" class="input-field"  id="email"  placeholder="correo@correo.com" >
                                        <span id="emailOK"></span>
                                    </div>
                                    <div class="form-group " id="grupo_Contraseña">
                                        <label for="input-password"class="formulario__label">Contraseña</label>
                                        <input id="txtPasswordd" type="Password" class="input-field" placeholder="Ingresa Tu Contraseña" name="textClave" required="" minlegth="4" maxlength="25"> 
                                        <button id="show_passwordd" class="btn btn-primary" type="button" onclick="mostrarPasswordd()"> <span class="fa fa-eye-slash icon"></span> </button>
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
            
            <script type="text/javascript">
                function mostrarPassword(){
                    var cambio = document.getElementById("txtPassword");
                    if(cambio.type == "password"){
                            cambio.type = "text";
                            $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
                    }else{
                            cambio.type = "password";
                            $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                    }
                } 
                $(document).ready(function () {
                    //CheckBox mostrar contraseña
                    $('#ShowPassword').click(function () {
                            $('#Password').attr('type', $(this).is(':checked') ? 'text' : 'password');
                    });
                });
            </script>
            <script type="text/javascript">
                function mostrarPasswordd(){
                    var cambio = document.getElementById("txtPasswordd");
                    if(cambio.type == "password"){
                            cambio.type = "text";
                            $('.icon').removeClass('fa fa-eye-slash').addClass('fa fa-eye');
                    }else{
                            cambio.type = "password";
                            $('.icon').removeClass('fa fa-eye').addClass('fa fa-eye-slash');
                    }
                } 
                $(document).ready(function () {
                    //CheckBox mostrar contraseña
                    $('#ShowPasswordd').click(function () {
                            $('#Password').attr('type', $(this).is(':checked') ? 'text' : 'password');
                    });
                });
            </script>
    </body>
</html>