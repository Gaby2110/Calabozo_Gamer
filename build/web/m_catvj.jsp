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

        <!-- DataTables -->
        <link href="plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Responsive datatable examples -->
        <link href="plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <link href="horizontal/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="horizontal/assets/css/style.css" rel="stylesheet" type="text/css">
        
        <!-- Link de card -->
        <link href="css/newstyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="includes/menuOrganizador.jsp" %>
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
                                    <%
                                    categoriavjVO  catvjVO = (categoriavjVO) request.getAttribute("categoria_videojuego");
                                    if (catvjVO!=null){
                                    %>    
                                        <h4 class="page-title">Actualizar Categoria Videojuego</h4>
                                        <form method="post" action="categoriavj">
                                            <input type="text" name="textnombre" class="form-control"  placeholder="Nombre categoria videojuego" value="<%=catvjVO.getNombre_catvj()%>"> 
                                            <input type="hidden" value="<%=catvjVO.getId_catvj()%>" name="textid">
                                            <br>
                                            <button id="btnvjc" class="btn btn-outline-info waves-effect waves-light">Actualizar</button>
                                            <input type="hidden" value="4" name="opcion">
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

                    <div class="row">
                        <div class="col-12">
                            <div class="card m-b-30">
                                <div class="card-body">
                                    <h4 class="mt-0 header-title">Videojuegos</h4>
                                    <br>
                                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                        <thead>
                                            <tr>
                                                <th>Nombre Categoria</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                categoriavjVO catevjVO = new categoriavjVO();
                                                categoriavjDAO vjDAO = new categoriavjDAO();
                                                ArrayList<categoriavjVO> listacatvj = vjDAO.listar();
                                                for (int i=0;i<listacatvj.size();i++){
                                                    catevjVO = listacatvj.get(i);
                                            %>   
                                            <tr>
                                                <td> <%=catevjVO.getNombre_catvj()%> </td>
                                            </tr>
                                            <%}%>
                                        </tbody>
                                    </table>
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

        <!-- Required datatable js -->
        <script src="plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="plugins/datatables/dataTables.bootstrap4.min.js"></script>
        
        <!-- Buttons examples -->
        <script src="plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="plugins/datatables/buttons.bootstrap4.min.js"></script>
        <script src="plugins/datatables/jszip.min.js"></script>
        <script src="plugins/datatables/pdfmake.min.js"></script>
        <script src="plugins/datatables/vfs_fonts.js"></script>
        <script src="plugins/datatables/buttons.html5.min.js"></script>
        <script src="plugins/datatables/buttons.print.min.js"></script>
        <script src="plugins/datatables/buttons.colVis.min.js"></script>
        
        <!-- Responsive examples -->
        <script src="plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="plugins/datatables/responsive.bootstrap4.min.js"></script>

        <!-- Datatable init js -->
        <script src="horizontal/assets/pages/datatables.init.js"></script>  

        <!-- App js -->
        <script src="horizontal/assets/js/app.js"></script>
    </body>
</html>


