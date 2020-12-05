<%-- 
    Document   : inscripcion_torneo
    Created on : 2/11/2020, 10:25:29 PM
    Author     : User
--%>

<%@page import="modeloDAO.premioDAO"%>
<%@page import="modeloVO.premioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.torneoDAO"%>
<%@page import="modeloVO.torneoVO"%>
<%@page import="modeloVO.usuarioVO"%>
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
        if(Rol.equals("Gamer")){
    %>
                <%@ include file="includes/menuGamer.jsp" %>
        <%
        }else if(Rol.equals("Organizador")){

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
        <%@ include file="includes/menuGamer.jsp" %>
        <div>
            <div class="wrapper">
                <div class="container-fluid">
                    <div class="vj">
                        <div class="caja">
                            <div class="msj">
                                <%if (request.getAttribute("MensajeError")!=null){%>
                                    ${MensajeError}
                                <%}else{%>  
                                    ${MensajeExito}
                                <%}%>
                            </div>
                        </div>
                        <%
                         torneoVO torneVO = new torneoVO();
                         torneoDAO torneoDAO = new torneoDAO();
                         ArrayList<torneoVO> listatorneo = torneoDAO.listarg();
                         for (int i=0;i<listatorneo.size();i++){
                             torneVO = listatorneo.get(i);
                         %>  
                         
                        <div class="card" style="--background:#5D9CEC; text:white; text-align: center;">
                            <br>
                            <div class="container">
                                <br><br>
                                <label> Nombre Torneo: </label>
                                <%=torneVO.getNombre_torneo()%>
                                <br>
                                <label> Número Participantes Torneo: </label>
                                <%=torneVO.getNumero_participantes_torneo()%>
                                <br>
                                <label> Fecha Inicio Torneo: </label>
                                <%=torneVO.getFecha_comienzo_torneo()%>
                                <br>
                                <label> Fecha Finalización Torneo: </label>
                                <%=torneVO.getFecha_fin_torneo()%>
                                <br>
                                <label> Ubicación Torneo: </label>
                                <%=torneVO.getUbicacion_torneo()%>
                            </div> 

                            <form method="post" action="torneo">
                                <input type="hidden" value="<%=torneVO.getId_torneo()%>" name="textidfk">
                                <input type="hidden" value="<%=id%>" name="textusu"> 
                                <br> <br> <br>
                                <div align="left">
                                    <input type="hidden" value="7" name="opcion">
                                    <button class="btn btn-outline-info waves-effect waves-light" > Inscribirme </button> 
                                </div>   
                            </form>
                        </div>
                        <% } %>
                    </div>                 
                </div>    
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
