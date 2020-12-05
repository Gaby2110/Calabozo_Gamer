<%-- 
    Document   : resultados
    Created on : 1/12/2020, 12:11:24 AM
    Author     : User
--%>

<%@page import="modeloVO.premioVO"%>
<%@page import="modeloDAO.encuentro_jugDAO"%>
<%@page import="modeloVO.encu_jugVO"%>
<%@page import="modeloDAO.torneoDAO"%>
<%@page import="modeloVO.torneoVO"%>
<%@page import="modeloVO.usuarioVO"%>
<%@page import="modeloDAO.encuentroDAO"%>
<%@page import="modeloVO.encuentroVO"%>
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
                                <li class="breadcrumb-item"><a href="javascript:void(0);">Encuentros</a></li>
                            </ol>
                        </div>
                    </div>
                    <!-- end row -->
                </div>

                <div class="vj">
                    <form method="post" action="encu_jug">
                        <select name="texttorneo" class="select-css">
                            <%
                                torneoDAO torneoDAO = new torneoDAO();
                                for(torneoVO torneoVO : torneoDAO.listar(id)){
                            %>
                                    <option value="<%=torneoVO.getId_torneo()%>"> <%=torneoVO.getNombre_torneo()%></option>
                                <% } %>
                        </select>

                        <select name="textronda" class="select-css">
                            <%
                                encuentroDAO encuentroDAO = new encuentroDAO();
                                for(premioVO premioVO : encuentroDAO.ronda(id)){
                            %>
                                    <option value="<%=premioVO.getRonda()%>"> <%=premioVO.getRonda()%></option>
                                <% } %>
                        </select>

                        <select name="textparticipante" class="select-css">
                            <%
                                encuentro_jugDAO encuentro_jugDAO = new encuentro_jugDAO();
                                for(encu_jugVO encu_jugVO : encuentro_jugDAO.participantes(id)){
                            %>
                                    <option value="<%=encu_jugVO.getId_jugador()%>"> <%=encu_jugVO.getId_jugador()%></option>
                                <% } %>
                        </select>

                        <select id="xd" name="textresultado" class="select-css">
                            <%
                                encuentro_jugDAO encujugDAO = new encuentro_jugDAO();
                                encu_jugVO encujVO = new encu_jugVO();
                            %>
                                    <option value="1"> Ganador</option>
                                    <option value="0"> Perdedor</option>
                        </select>
                        <button id="btnvj" class="btn btn-outline-info waves-effect waves-light">Registrar</button>
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
            <!-- end container-fluid -->
        </div>
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



