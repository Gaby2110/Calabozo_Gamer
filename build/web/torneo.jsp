<%-- 
    Document   : videojuego.jsp
    Created on : 16/09/2020, 09:01:10 AM
    Author     : User
--%>
<%@page import="modeloVO.usuarioVO"%>
<%@page import="modeloVO.videojuegoVO"%>
<%@page import="modeloDAO.videojuegoDAO"%>
<%@page import="modeloDAO.torneoDAO"%>
<%@page import="modeloVO.torneoVO"%>
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
        <link rel="shortcut icon" href="assets/images/calabozo-icono.png">
        <link href="horizontal/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/style.css" rel="stylesheet" type="text/css">
         <!-- Link de card -->
        <link href="css/newstyle.css" rel="stylesheet" type="text/css">
    </head>

    <body>
        <%@ include file="includes/menuOrganizador.jsp" %> 
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
                                    <h4 class="page-title">Registrar Torneo</h4>
                                    <form method="post" action="torneo">
                                        <input type="text" name="textnombre" class="form-control"  placeholder="Nombre torneo">  
                                        <br>
                                        <input type="text" name="textparticipantes" class="form-control"  placeholder="Numero participantes"> 
                                        <br>
                                        <input type="date" name="textfechacomienzo" class="form-control"> 
                                        <br>
                                        <input type="date" name="textfechafin" class="form-control" > 
                                        <br>
                                        <input type="text" name="textubicacion" class="form-control"  placeholder="Ubicacion torneo"> 
                                        <br>
                                        <input type="hidden" name="textidus" value="<%=id%>">
                                        <input type="text" name="textpremio" class="form-control"  placeholder="Premio">
                                        <select name="textvid" class="select-css">
                                            <%
                                                videojuegoDAO videojuegoDAO = new videojuegoDAO();
                                                for(videojuegoVO videojuegoVO : videojuegoDAO.listarvid()){
                                                %>
                                                    <option value="<%=videojuegoVO.getId_videojuego()%>"> <%=videojuegoVO.getNombre_videojuego()%></option>
                                                <% } %>
                                        </select>
                                    <p align="right">
                                        <button id="btnvj" class="btn btn-outline-info waves-effect waves-light">Registrar</button>
                                    </p>
                                    <input type="hidden" value="1" name="opcion">
                                </form>
                                    <div class="msj">
                                        <%if (request.getAttribute("MensajeError")!=null){%>
                                        ${MensajeError}
                                        <%}else{%>  
                                        ${MensajeExito}
                                        <%}%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- end col -->
                </div>
            </div>
                <!-- end container-fluid -->
        </div>
        <!-- end wrapper -->   


        <!-- Footer -->
       <br><br><br><br>
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
