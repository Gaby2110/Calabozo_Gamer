<%-- 
    Document   : videojuego.jsp
    Created on : 16/09/2020, 09:01:10 AM
    Author     : User
--%>
<%@page import="modeloVO.usuarioVO"%>
<%@page import="modeloDAO.competenciaDAO"%>
<%@page import="modeloVO.competenciaVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.categoriavjDAO"%>
<%@page import="modeloVO.categoriavjVO"%>
<!DOCTYPE html>
<% 
    
response.setHeader("Pragma","No-cache");
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setDateHeader("Expires",0);

%>

<% 
    String Nombre = "";
    String Rol = "";
    String id = "";
    HttpSession SUsuario = (HttpSession)request.getSession();
    
    if(SUsuario.getAttribute("usuario") == null){       
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }else{
        usuarioVO usuVO = (usuarioVO)SUsuario.getAttribute("usuario");
        id = usuVO.getId_usuario();
        Nombre = usuVO.getNombre_usuario();
        Rol = (String)SUsuario.getAttribute("rol");
        
        
    }
%>
            
    <% 
        if(Rol.equals("Organizador")){
    %>
                <%@ include file="includes/menuOrganizador.jsp" %>
        <%
        }else if(Rol.equals("Gamer")){

            request.getRequestDispatcher("index.jsp").forward(request, response);
            
        }
    %>  
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Calabozo Gamer</title>
        <meta content="Responsive admin theme build on top of Bootstrap 4" name="description" />
        <meta content="Themesdesign" name="author" />
        <link rel="shortcut icon" href="assets\images\calabozo-icono.png">
        <link href="horizontal/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
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
                                        <h6 class="dropdown-item-text"> Notificaciones </h6>
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
                                        <a href="javascript:void(0);" class="dropdown-item text-center notify-all text-primary"> View all <i class="fi-arrow-right"></i> </a>
                                    </div>
                                </li>

                                <li class="dropdown notification-list list-inline-item">
                                    <div class="dropdown notification-list nav-pro-img">
                                        <a class="dropdown-toggle nav-link arrow-none nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false">
                                            <img src="horizontal/assets/images/users/user-4.jpg" alt="user" class="rounded-circle">
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                            <!-- item-->
                                            <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle"></i> Perfil</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item text-danger" href="#"><i class="mdi mdi-power text-danger"></i> Cerrar Sesión</a>
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
                                <a href="menu.jsp"><i class="icon-accelerator"></i>Inicio</a>
                            </li>
                            <li class="has-submenu">
                                <a href="#"><i class="icon-pencil-ruler"></i> Videojuego <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                            <li><a href="videojuego.jsp">Registrar videojuego</a></li>
                                            <li><a href="m_videojuego.jsp">Modificar videojuego</a></li>
                                            <li><a href="e_videojuego.jsp">Eliminar videojuego</a></li>
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
                                            <li><a href="m_catvj.jsp">Modificar categoria</a></li>
                                            <li><a href="e_catvj.jsp">Eliminar categoria</a></li>
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
                                            <li><a href="m_torneo.jsp">Modificar torneo</a></li>
                                            <li><a href="e_torneo.jsp">Eliminar torneo</a></li>
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
                                            <li><a href="m_encuentro.jsp">Modificar encuentro</a></li>
                                            <li><a href="e_encuentro.jsp">Eliminar encuentro</a></li>
                                        </ul> 
                                    </li>
                                </ul>
                            </li>
                            
                            <li class="has-submenu">
                                <a href="#"><i class="icon-paper-sheet"></i> Competencia <i class="mdi mdi-chevron-down mdi-drop"></i></a>
                                <ul class="submenu megamenu">
                                    <li>
                                        <ul>
                                             <li><a href="competencia.jsp">Registrar competencia</a></li>
                                            <li><a href="e_competencia.jsp">Eliminar competencia</a></li>
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
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-right">
                                <li class="breadcrumb-item"><a href="javascript:void(0);">CG</a></li>
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Videojuego</a></li>
                            </ol>
                        </div>
                    </div>
                    <!-- end row -->
                </div>

                <div class="vj">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card m-b-30">
                                <div class="card-body">
                                    <h4 class="page-title">Registrar competencia</h4>
                                    <form method="post" action="competencia">   
                                        <input type="text" name="textidvid" class="form-control"  placeholder="Id competencia videojuego">     
                                        <br>  
                                        <input type="text" name="textidtorneo" class="form-control"  placeholder="Id competencia torneo"> 
                                        <p align="right">
                                          <button id="btnvj" class="btn btn-outline-info waves-effect waves-light">Registrar</button>
                                        </p>
                                        <input type="hidden" value="1" name="opcion">
                                        <div class="msj">
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
                    </div> <!-- end col -->

                  <div class="row">
                    <div class="col-12">
                        <div class="card m-b-30">
                            <div class="card-body">
                                <div class="table-rep-plugin">
                                    <div class="table-responsive b-0" data-pattern="priority-columns">
                                        <table id="tech-companies-1" class="table  table-striped">
                                            <tr>
                                                <th>Id Competencia</th>
                                                <th>Id competencia videojuego</th>
                                                <th>Id competencia torneo</th>
                                            </tr>
                                            <%
                                            competenciaVO competenciaVO = new competenciaVO();
                                            competenciaDAO competenciaDAO = new competenciaDAO();
                                            ArrayList<competenciaVO> listacompetencia = competenciaDAO.listar();
                                            for (int i=0;i<listacompetencia.size();i++){
                                                competenciaVO = listacompetencia.get(i);
                                            %>  
                                            <tr>
                                                <td> <%=competenciaVO.getId_competencia()%> </td>
                                                <td> <%=competenciaVO.getId_competencia_videojuego()%> </td>
                                                <td> <%=competenciaVO.getId_competencia_torneo()%> </td>
                                            </tr>
                                            <%}%>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end col -->
                </div> <!-- end row -->  
            </div>
        </div>
            <!-- end container-fluid -->
    </div>
        <!-- end wrapper -->   


            <!-- end container-fluid -->

        <!-- end wrapper -->

        <!-- Footer -->

        <footer class="footer">
           © 2020 Calabozo Gamer <span class="d-none d-sm-inline-block">  <i class="">Todos Los Derechos Reservados</i> </span>.
        </footer>

        <!-- End Footer -->

        <!-- jQuery  -->
        <script src="horizontal/assets/js/jquery.min.js"></script>
        <script src="horizontal/assets/js/bootstrap.bundle.min.js"></script>
        <script src="horizontal/assets/js/jquery.slimscroll.js"></script>
        <script src="horizontal/assets/js/waves.min.js"></script>
        <!-- Parsley js -->
        <script src="plugins/parsleyjs/parsley.min.js"></script>

        <!-- App js -->
        <script src="horizontal/assets/js/app.js"></script>
        <script>
            $(document).ready(function() {
                $('form').parsley();
            });
        </script>
    </body>
</html>

