<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <title>Nhân viên | PoSale</title>

                    <!-- Google Font: Source Sans Pro -->
                    <link rel="stylesheet"
                        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
                    <!-- Font Awesome -->
                    <link rel="stylesheet" href="/plugins/fontawesome-free/css/all.min.css">
                    <!-- Ionicons -->
                    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
                    <!-- Tempusdominus Bootstrap 4 -->
                    <link rel="stylesheet"
                        href="/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
                    <!-- iCheck -->
                    <link rel="stylesheet" href="/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
                    <!-- JQVMap -->
                    <link rel="stylesheet" href="/plugins/jqvmap/jqvmap.min.css">
                    <!-- Theme style -->
                    <link rel="stylesheet" href="/dist/css/adminlte.min.css">
                    <!-- overlayScrollbars -->
                    <link rel="stylesheet" href="/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
                    <!-- Daterange picker -->
                    <link rel="stylesheet" href="/plugins/daterangepicker/daterangepicker.css">
                    <!-- summernote -->
                    <link rel="stylesheet" href="/plugins/summernote/summernote-bs4.min.css">
                </head>

                <body class="hold-transition sidebar-mini layout-fixed">
                    <div class="wrapper">
                        <!-- Preloader -->
                        <div class="preloader flex-column justify-content-center align-items-center">
                            <img class="animation__shake" src="/dist/img/AdminLTELogo.png" alt="AdminLTELogo"
                                height="60" width="60">
                        </div>

                        <!-- header -->
                        <jsp:include page="../layout/header.jsp" />

                        <!-- Sidebar -->
                        <jsp:include page="../layout/sidebar.jsp" />

                        <!-- Content Wrapper. Contains page content -->
                        <div class="content-wrapper">
                            <!-- Content Header (Page header) -->
                            <div class="content-header">
                                <div class="container-fluid">
                                    <div class="row mb-2 d-flex align-items-center">
                                        <div class="col-sm-6">
                                            <h1 class="m-0">Nhân viên</h1>
                                        </div><!-- /.col -->

                                        <div class="col-sm-6">
                                            <div class="breadcrumb float-sm-right">
                                                <button type="button" class="btn btn-success mr-2" data-toggle="modal"
                                                    data-target="#modal-xl">
                                                    <i class="fas fa-plus"></i>
                                                    Nhân viên
                                                </button>

                                                <button type="button" class="btn btn-success mr-2">
                                                    <i class="fas fa-minus"></i>
                                                    Nhập file
                                                </button>

                                                <button type="button" class="btn btn-success mr-2">
                                                    <i class="fas fa-minus"></i>
                                                    Xuất file
                                                </button>
                                            </div>
                                        </div><!-- /.col -->
                                    </div><!-- /.row -->
                                </div><!-- /.container-fluid -->
                            </div>
                            <!-- /.content-header -->

                            <!-- Main content -->
                            <section class="content">
                                <div class="container-fluid">
                                    <!-- Small boxes (Stat box) -->
                                    <div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                        <div class="row">
                                            <div class="col-sm-12">


                                                <table id="example1"
                                                    class="table table-bordered table-striped dataTable no-footer dtr-inline"
                                                    aria-describedby="example1_info">
                                                    <thead>
                                                        <tr>
                                                            <th class="sorting sorting_asc" tabindex="0"
                                                                aria-controls="example1" rowspan="1" colspan="1"
                                                                aria-sort="ascending"
                                                                aria-label="Rendering engine: activate to sort column descending">
                                                                Mã nhân viên
                                                            </th>

                                                            <th class="sorting" tabindex="0" aria-controls="example1"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Browser: activate to sort column ascending">
                                                                Tên nhân viên
                                                            </th>

                                                            <th class="sorting" tabindex="0" aria-controls="example1"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Platform(s): activate to sort column ascending">
                                                                Email
                                                            </th>

                                                            <th class="sorting" tabindex="0" aria-controls="example1"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Platform(s): activate to sort column ascending">
                                                                Số điện thoại
                                                            </th>

                                                            <th class="sorting" tabindex="0" aria-controls="example1"
                                                                rowspan="1" colspan="1"
                                                                aria-label="Engine version: activate to sort column ascending">
                                                                Chức vụ
                                                            </th>

                                                            <th class="sorting" tabindex="0" aria-controls="example1"
                                                                rowspan="1" colspan="1"
                                                                aria-label="CSS grade: activate to sort column ascending">
                                                                Chi tiết
                                                            </th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <c:forEach var="dataUser" items="${dataUsers}">
                                                            <tr>
                                                                <td class="dtr-control sorting_1" tabindex="0">
                                                                    ${dataUser.id}
                                                                </td>
                                                                <td>${dataUser.fullName}</td>
                                                                <td>${dataUser.email}</td>
                                                                <td>${dataUser.phone}</td>
                                                                <td>Admin</td>
                                                                <td>
                                                                    <button type="button" class="btn btn-success mr-2"
                                                                        data-toggle="modal"
                                                                        data-target="#modal-xl-update">
                                                                        <i class="fas fa-plus"></i>
                                                                        Cập nhật
                                                                    </button>

                                                                    <form:form method="post" action="/admin/user/delete"
                                                                        modelAttribute="newUser" class="mb-0">
                                                                        <input type="hidden" name="id"
                                                                            value="${dataUser.id}" />
                                                                        <button class="btn btn-danger"
                                                                            type="submit">Delete</button>
                                                                    </form:form>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /.row -->
                                </div><!-- /.container-fluid -->
                            </section>
                            <!-- /.content -->
                        </div>
                        <!-- /.content-wrapper -->

                    </div>
                    <!-- ./wrapper -->

                    <!-- Modal -->
                    <jsp:include page="../user/create.jsp" />
                    <!-- /.modal -->

                    <!-- jQuery -->
                    <script src="/plugins/jquery/jquery.min.js"></script>

                    <!-- jQuery UI 1.11.4 -->
                    <script src="/plugins/jquery-ui/jquery-ui.min.js"></script>

                    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
                    <script>
                        $.widget.bridge('uibutton', $.ui.button)
                    </script>

                    <!-- Bootstrap 4 -->
                    <script src="/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

                    <!-- ChartJS -->
                    <script src="/plugins/chart.js/Chart.min.js"></script>

                    <!-- Sparkline -->
                    <script src="/plugins/sparklines/sparkline.js"></script>

                    <!-- JQVMap -->
                    <script src="/plugins/jqvmap/jquery.vmap.min.js"></script>
                    <script src="/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>

                    <!-- jQuery Knob Chart -->
                    <script src="/plugins/jquery-knob/jquery.knob.min.js"></script>

                    <!-- daterangepicker -->
                    <script src="/plugins/moment/moment.min.js"></script>
                    <script src="/plugins/daterangepicker/daterangepicker.js"></script>

                    <!-- Tempusdominus Bootstrap 4 -->
                    <script src="/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>

                    <!-- Summernote -->
                    <script src="/plugins/summernote/summernote-bs4.min.js"></script>

                    <!-- overlayScrollbars -->
                    <script src="/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>

                    <!-- DataTables  & Plugins -->
                    <script src="/plugins/datatables/jquery.dataTables.min.js"></script>
                    <script src="/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
                    <script src="/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
                    <script src="/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
                    <script src="/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
                    <script src="/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
                    <script src="/plugins/jszip/jszip.min.js"></script>
                    <script src="/plugins/pdfmake/pdfmake.min.js"></script>
                    <script src="/plugins/pdfmake/vfs_fonts.js"></script>
                    <script src="/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
                    <script src="/plugins/datatables-buttons/js/buttons.print.min.js"></script>
                    <script src="/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

                    <!-- AdminLTE App -->
                    <script src="/dist/js/adminlte.js"></script>

                    <!-- AdminLTE for demo purposes -->
                    <script src="/dist/js/demo.js"></script>

                    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
                    <script src="/dist/js/pages/dashboard.js"></script>

                    <!-- Page specific script -->
                    <script>
                        $(function () {
                            $("#example1").DataTable({
                                "responsive": true, "lengthChange": false, "autoWidth": false,
                                "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
                            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
                            $('#example2').DataTable({
                                "paging": true,
                                "lengthChange": false,
                                "searching": false,
                                "ordering": true,
                                "info": true,
                                "autoWidth": false,
                                "responsive": true,
                            });
                        });
                    </script>
                </body>

                </html>