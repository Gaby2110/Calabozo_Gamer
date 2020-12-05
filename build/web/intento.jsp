<%@page import="modeloDAO.vid_catDAO"%>
<%@page import="modeloVO.vid_catVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modeloDAO.videojuegoDAO"%>
<%@page import="modeloVO.videojuegoVO"%>
<!DOCTYPE html>
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

</head>

<body>

    <div class="wrapper">
        <div class="container-fluid">
            <!-- Page-Title -->
            <div class="page-title-box">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <h4 class="page-title"></h4>
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

            <div class="row">
                        <div class="col-12">
                            <div class="card m-b-30">
                                <div class="card-body">
                                    <h4 class="mt-0 header-title">Videojuegos</h4>
                                    <br>
                                    <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                        <thead>
                                            <tr>
                                                <th>Nombre Videojuego</th>
                                                <th>Nombre categoria</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                vid_catVO vid_catVO = new vid_catVO();
                                                vid_catDAO vid_catDAO = new vid_catDAO();
                                                ArrayList<vid_catVO> listavid_cat = vid_catDAO.listar();
                                                for (int i=0;i<listavid_cat.size();i++){
                                                    vid_catVO = listavid_cat.get(i);
                                            %>  
                                                    <tr>
                                                        <td> <%=vid_catVO.getNombre_videojuego()%> </td>
                                                        <td> <%=vid_catVO.getNombre_catvj()%> </td>
                                                    </tr>
                                                <%}%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> <!-- end col -->
                    </div> <!-- end row -->
        </div>
        <!-- end container-fluid -->
    </div>
    <!-- end wrapper -->

    <!-- Footer -->
    <footer class="footer">
        © 2019 - 2020 Stexo <span class="d-none d-sm-inline-block"> - Crafted with <i class="mdi mdi-heart text-danger"></i> by Themesdesign</span>.
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