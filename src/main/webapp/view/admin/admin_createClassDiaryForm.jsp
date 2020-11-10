<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Index</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="../../data/plugins/fontawesome-free/css/all.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="../../data/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="../../data/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../data/dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <jsp:include page="sideBar_admin.jsp" />
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Create New Diary</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="/Class?fileName=AdminIndex">Home</a></li>
                            <li class="breadcrumb-item active">Create New Diary</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="/diary?action=create&&type=class" class="was-validated" method="post">
                                    <div class="form-group">
                                        <label for="classId">Class name:</label>
                                        <select name="className" id="classId">
                                            <c:forEach items="${listClass}" var="classroom">
                                                <option value="${classroom.getClassID()}">${classroom.getName()}</option>
                                            </c:forEach>

                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="content">Content:</label>
                                        <textarea type="text" class="form-control" id="content" placeholder="class diary . . ." name="content" required autofocus></textarea>
                                        <div class="invalid-feedback">Content can't be empty!</div>
                                    </div>
                                    <button type="submit" class="u-active-palette-2-dark-2 u-black u-btn u-button-style u-hover-palette-2-light-1 u-btn-1">Create New Class</button>
                                </form>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="float-right d-none d-sm-block">
            <b>Lorem ipsum dolor.</b>
        </div>
        <strong>Lorem ipsum dolor <a href="#">Lorem</a></strong> Lorem ipsum dolor.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../../data/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../../data/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="../../data/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../../data/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../../data/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../data/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<!-- AdminLTE App -->
<script src="../../data/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../data/dist/js/demo.js"></script>
<!-- page script -->
<script>
    $(function () {
        $("#example1").DataTable({
            "responsive": true,
            "autoWidth": false,
        });
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