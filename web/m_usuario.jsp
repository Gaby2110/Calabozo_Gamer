<%-- 
    Document   : videojuego.jsp
    Created on : 16/09/2020, 09:01:10 AM
    Author     : User
--%>
<%@page import="modeloVO.usuarioVO"%>
<%@page import="modeloDAO.categoriavjDAO"%>
<%@page import="modeloVO.categoriavjVO"%>
<%@page import="java.util.ArrayList"%>
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
    String Apellido = "";
    String Telefono = "";
    String Correo = "";
    HttpSession SUsuario = (HttpSession)request.getSession();
    
    if(SUsuario.getAttribute("usuario") == null){       
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }else{
        usuarioVO usuVO = (usuarioVO)SUsuario.getAttribute("usuario");
        id = usuVO.getId_usuario();
        Nombre = usuVO.getNombre_usuario();
        Apellido = usuVO.getApellido_usuario();
        Rol = (String)SUsuario.getAttribute("rol");
        Telefono = usuVO.getTelefono_usuario();
        Correo = usuVO.getCorreo_usuario();
    }
%>
            
   <% 
        if(Rol.equals("Organizador")){
    %>
                <%@ include file="includes/menuOrganizador.jsp" %>
        <%
        }else if(Rol.equals("Gamer")){

            request.getRequestDispatcher("menu.jsp").forward(request, response);
            
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
        <link rel="shortcut icon" href="assets/images/calabozo-icono.png">
        <link href="horizontal/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/style.css" rel="stylesheet" type="text/css">
        <!-- Link de card -->
        <link href="css/newstyle.css" rel="stylesheet" type="text/css">
    </head>
    <body>
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
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Actualizar Perfil</a></li>
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
                                    <%
                                        usuarioVO  usuVO = (usuarioVO) request.getAttribute("usuario");
                                        if (usuVO!=null){
                                    %>    
                                        <h4 class="page-title">Actualizar Perfil</h4>
                                        <a>Por la seguridad de tu informaciòn la clave aparece codificada sin embargo cuando ingreses la nueva esta se podrà observar cuando gustes </a>
                                        <form method="post" action="usuario">
                                            <input type="text"  name="textId" class="form-control"  placeholder="Id usuario" value="<%=usuVO.getId_usuario()%>">
                                            <input type="text" name="textNombre" class="form-control"  placeholder="Nombre usuario" value="<%=usuVO.getNombre_usuario()%>"> 
                                            <input type="text"  name="textApellido" class="form-control"  placeholder="Apellido usuario" value="<%=usuVO.getApellido_usuario()%>">
                                            <input type="text"  name="textTelefono" class="form-control"  placeholder="Telefono usuario" value="<%=usuVO.getTelefono_usuario()%>">
                                            <input type="text"  name="textCorreo" class="form-control"  placeholder="Correo usuario" value="<%=usuVO.getCorreo_usuario()%>">
                                            <br>
                                            <button id="btnvjc" class="btn btn-outline-info waves-effect waves-light">Actualizar</button>
                                            <input type="hidden" value="3" name="opcion">
                                        </form> 
                                    <%}else{%>
                                    <% } %>
                                        <div>
                                            <%if (request.getAttribute("MensajeError")!=null){%>
                                                ${MensajeError}
                                            <%}else{%>  
                                                ${MensajeExito}
                                            <%}%>
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <!-- end col -->    
                </div>
            </div>
        <!-- end container-fluid -->
        </div>
        <!-- end wrapper -->   
        
        <!-- Footer -->
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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