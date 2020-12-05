<%-- 
    Document   : videojuego.jsp
    Created on : 16/09/2020, 09:01:10 AM
    Author     : User
--%>
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
                                <h4 class="page-title">Consultar Encuentro</h4>
                                <form method="post" action="encuentro"> 
                                    <input type="text" name="textid" class="form-control"  placeholder="Id encuentro">
                                    <p align="right">
                                        <button id="btnvj" class="btn btn-outline-info waves-effect waves-light">Consultar</button>
                                    </p>
                                    <input type="hidden" value="6" name="opcion">
                                    <div class="msj">
                                        <%if(request.getAttribute("MensajeError")!= null){%>
                                            ${MensajeError}
                                        <%}%> 
                                    </div>   
                                </form>
                            </div>
                        </div>
                    </div>
                </div> 
                <!-- end col -->

                <div class="row">
                    <div class="col-lg-6">
                        <div class="card m-b-30">
                            <div class="card-body">
                                <%
                                    encuentroVO encuentroVO = (encuentroVO)request.getAttribute("encuentro");
                                    if (encuentroVO!=null){
                                %>       
                                <form method="post" action="encuentro">
                                    <input type="text" name="textid" class="form-control"  placeholder="Id encuentro" value="<%=encuentroVO.getId_encuentro()%>" readonly="readonly">
                                    <br>
                                    <button id="btnvjc" class="btn btn-outline-info waves-effect waves-light">Eliminar</button>
                                    <input type="hidden" value="5" name="opcion">
                                </form>
                                <%}else{%>
                                <% } %>
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
                </div>
                <!-- end col -->    

                <div class="row">
                    <div class="col-12">
                        <div class="card m-b-30">
                            <div class="card-body">
                                <div class="table-rep-plugin">
                                    <div class="table-responsive b-0" data-pattern="priority-columns">
                                        <table id="tech-companies-1" class="table  table-striped">
                                            <tr>
                                                <th>Id Encuentro</th>
                                                <th>Fecha Encuentro</th>
                                                <th>Ubicacion Encuentro</th>
                                                <th>Id Torneo</th>
                                            </tr>
                                            <%
                                            encuentroVO encuentoVO = new encuentroVO();
                                            encuentroDAO vjDAO = new encuentroDAO();
                                            ArrayList<encuentroVO> listavideojuego = vjDAO.listar();
                                            for (int i=0;i<listavideojuego.size();i++){
                                                encuentroVO = listavideojuego.get(i);
                                            %>  
                                            <tr>
                                                <td> <%=encuentroVO.getId_encuentro()%> </td>
                                                <td> <%=encuentroVO.getFecha_encuentro()%> </td>
                                                <td> <%=encuentroVO.getUbicacion_encuentro()%> </td>
                                                <td> <%=encuentroVO.getId_torneo_encuentro()%> </td>
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


