<%-- 
    Document   : perfil
    Created on : 4/11/2020, 12:14:35 AM
    Author     : User
--%>

<%@page import="modeloVO.usuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link rel="shortcut icon" href="assets/images/calabozo-icono.png"/>
        <link href="horizontal/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="horizontal/assets/css/metismenu.min.css" rel="stylesheet" type="text/css"/>
        <link href="horizontal/assets/css/icons.css" rel="stylesheet" type="text/css"/>
        <link href="horizontal/assets/css/style.css" rel="stylesheet" type="text/css"/>
        <!-- Link de card -->
        <link href="css/newstyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@ include file="includes/menuOrganizador.jsp" %>
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
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Perfil</a></li>
                            </ol>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-xl-3">
                    <div class="card m-b-30">
                        <img class="img-thumbnail" alt="200x200" style="width: 100px; height: 100px;" src="assets/images/perfil.png" data-holder-rendered="true">
                        <div class="card-body">
                            <h4 class="card-title font-16 mt-0"><%=Nombre%></h4>
                        </div>   
                        <div class="datosperfil">
                            <%
                                        usuarioVO  usuVO = (usuarioVO) request.getAttribute("usuario");
                                        if (usuVO!=null){
                            %>
                            <form method="post" action="usuario">
                                <input type="text" readonly  name="textId" class="form-control"  placeholder="Id usuario" value="<%=usuVO.getId_usuario()%>">
                                <input type="text" readonly name="textNombre" class="form-control"  placeholder="Nombre usuario" value="<%=usuVO.getNombre_usuario()%>"> 
                                <input type="text" readonly name="textApellido" class="form-control"  placeholder="Apellido usuario" value="<%=usuVO.getApellido_usuario()%>">
                                <input type="text" readonly name="textTelefono" class="form-control"  placeholder="Telefono usuario" value="<%=usuVO.getTelefono_usuario()%>">
                                <input type="text" readonly name="textCorreo" class="form-control"  placeholder="Correo usuario" value="<%=usuVO.getCorreo_usuario()%>">
                                <br>
                            </form> 
                            <%}else{%>
                            <% } %>
                        </div>
                    </div>
                    <br><br><br><br><br><br><br><br><br>
                    <form method="post" action="usuario">           
                        <input type="hidden" value="<%=id%>" name="textId"> 
                        <input type="hidden" value="4" name="opcion">
                        <button class="btn btn-outline-info waves-effect waves-light">Actualizar datos</button>
                    </form>
                    <script language="JavaScript">
                        function pregunta(){
                            if (confirm('¿Estas seguro de desactivar tu cuenta?')){
                               document.tuformulario.submit()
                            }
                        }
                    </script>  
                    <form name=tuformulario method="post" action="usuario">
                        <input type="hidden" value="<%=id%>" name="textId">
                        <input type="hidden" value="6" name="opcion">
                        <button class="btn btn-outline-info waves-effect waves-light" type=button onclick="pregunta()" value="Desactivar cuenta">Desactivar cuenta</button>
                    </form>
                    
                </div><!-- end col -->
            </div>
        </div>
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
