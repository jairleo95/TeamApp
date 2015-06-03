<%-- 
    Document   : Registrar_integrantes_Equipos
    Created on : 03/06/2015, 03:13:36 PM
    Author     : Alexander
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta charset="UTF-8">
        <title>REGISTRO DE INTEGRANTE | RESGISTRAR</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.4 -->
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
        <!-- daterange picker -->
        <link href="../../plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css">
        <!-- iCheck for checkboxes and radio inputs -->
        <link href="../plugins/iCheck/all.css" rel="stylesheet" type="text/css">
        <!-- Bootstrap Color Picker -->
        <link href="../plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">
        <!-- Bootstrap time Picker -->
        <link href="../plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
        <!-- Theme style -->
        <link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css">
        <!-- Theme style -->
        <link href="../plugins/iCheck/all.css" rel="stylesheet" type="text/css">
    </head>
    <body class="register-page">
        <div class="register-box">
            <div class="register-logo">
                <a href="../../index2.html"><b>TEAM</b>App</a>
            </div>

            <div class="register-box-body">
                <p class="login-box-msg">Registrar Nuevos Integrantes</p>
                <form action="" method="post">
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="Nombres">
                        <span class="glyphicon glyphicon-user form-control-feedback nombre"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" placeholder="Apellidos">
                        <span class="glyphicon glyphicon-user form-control-feedback apellido"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="number" class="form-control" placeholder="N° Camiseta">
                        <span class="glyphicon glyphicon-user form-control-feedback camiseta"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="number" class="form-control" placeholder="N° Celular">
                        <span class="glyphicon glyphicon-user form-control-feedback Numero"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="email" class="form-control" placeholder="Email">
                        <span class="glyphicon glyphicon-envelope form-control-feedback email"></span>
                    </div>
                    <div class="row" align="center">

                        <div class="col-xs-4">
                            <button type="submit" class="btnGuardarc btn-block btn-primary btn-sm">Registrar</button>
                        </div>
                        <div class="col-xs-4">
                            <button type="submit" class="btnCancelar btn-block btn-danger btn-sm">Cancelar</button>
                        </div>
                    </div>
                </form>                  
            </div><!-- /.form-box -->
        </div><!-- /.register-box -->     
        <section>

            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Lista de Integrantes del Equipo</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="dataTables_length" id="example1_length">
                                    <label>Show 
                                        <select name="example1_length" aria-controls="example1" class="form-control input-sm">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select> entries
                                    </label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div id="example1_filter" class="dataTables_filter">
                                    <label>Search:
                                        <input type="search" class="form-control input-sm" placeholder="" aria-controls="example1">
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                    <thead>
                                        <tr role="row">
                                            <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 228px;">Nombres</th>
                                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 281px;">Apellidos</th>
                                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 249px;">N° de Camiseta</th>
                                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 198px;">N° Celular</th>
                                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 146px;">Correo Electronico</th>
                                        </tr>
                                    </thead>
                                    <tbody> 
                                        
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-5">
                                <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>

                            </div>
                            <div class="col-sm-7">
                                <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                                    <ul class="pagination">
                                        <li class="paginate_button previous disabled" id="example1_previous">
                                            <a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a>
                                        </li>
                                        <li class="paginate_button active">
                                            <a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1
                                            </a>
                                        </li>
                                        <li class="paginate_button ">
                                            <a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2
                                            </a>
                                        </li>
                                        <li class="paginate_button ">
                                            <a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3
                                            </a>
                                        </li>
                                        <li class="paginate_button ">
                                            <a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4
                                            </a>
                                        </li>
                                        <li class="paginate_button ">
                                            <a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5
                                            </a>
                                        </li>
                                        <li class="paginate_button ">
                                            <a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6
                                            </a>
                                        </li>
                                        <li class="paginate_button next" id="example1_next">
                                            <a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</section>

<!-- jQuery 2.1.4 -->
<script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js" type="text/javascript"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>

<script>
    function re_Integrantes_equipos() {
    alert();
            var nombre = $(".Nombre").val();
            var apellido = $(".Apellido").val();
            var camiseta = $(".Camiseta").val();
            var numero = $(".Numero").val();
            var Correo = $(".correro").val();
           // $.post("../../", "opc=reporte_datos_genereales&nombre=" + nombre + "&apellido=" + apellido + "&correo=" + correo + "&numero=" + numero, function (objJson) {

            }
            $(document).ready(function () {
            var b = $('#tbodys');
                    $("#brnGuardar").click(
                    alert();
                    function () {
                    re_Integrantes_equipos();
                    }
            );
                    $("#btnCancelar").click(
                    function () {
                    document.formulario.reset();
                            b.empty();
                            html = '<tr><td colspan="8" align="center">Haga la busqueda por algunos de los filtros...</td></tr>'
                            $(".tbodys").html(html);
                    }
            );
            });


</script>

<div id="window-resizer-tooltip" style="display: none;"><a href="#" title="Edit settings"></a><span class="tooltipTitle">Window size: </span><span class="tooltipWidth" id="winWidth">1130</span> x <span class="tooltipHeight" id="winHeight">870</span><br><span class="tooltipTitle">Viewport size: </span><span class="tooltipWidth" id="vpWidth">562</span> x <span class="tooltipHeight" id="vpHeight">788</span></div></body></html>
