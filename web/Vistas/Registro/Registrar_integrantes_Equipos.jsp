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
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
        <!-- daterange picker -->
        <link href="../../../plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css">
        <!-- iCheck for checkboxes and radio inputs -->
        <link href="../../plugins/iCheck/all.css" rel="stylesheet" type="text/css">
        <!-- Bootstrap Color Picker -->
        <link href="../../plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">
        <!-- Bootstrap time Picker -->
        <link href="../../plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
        <!-- Theme style -->
        <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css">
        <!-- Theme style -->
        <link href="../../plugins/iCheck/all.css" rel="stylesheet" type="text/css">
    </head>
    <body class="box box-primary">
        <div class="box box-primary">
            <div class="register-logo">
                <a href="../../Principal.jsp"><b>TEAM</b>App</a>
            </div>

            <div >
                <p align="center">Registrar Nuevos Integrantes</p>
                <form action="../../integrantes" id="checkout-form" class="smart-form" novalidate="novalidate">
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" name="nombre"placeholder="Nombres" required="">
                        <span class="glyphicon glyphicon-user form-control-feedback nombre"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control" name="ape_paterno" placeholder="Apellido Paterno">
                        <span class="glyphicon glyphicon-user form-control-feedback apellido"></span>
                    </div>
                     <div class="form-group has-feedback">
                        <input type="text" class="form-control" name="ape_materno" placeholder="Apellido Materno">
                        <span class="glyphicon glyphicon-user form-control-feedback apellido"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="number" class="form-control" name="co_estudiante" placeholder="Codigo Estudiante">
                        <span class="glyphicon glyphicon-user form-control-feedback camiseta"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="number" class="form-control" name="nu_camiseta" placeholder="N° Camiseta">
                        <span class="glyphicon glyphicon-user form-control-feedback camiseta"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="number" class="form-control" name="dni" placeholder="N° DNI">
                        <span class="glyphicon glyphicon-user form-control-feedback Numero"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="number" class="form-control" name="cell" placeholder="N° Celular">
                        <span class="glyphicon glyphicon-user form-control-feedback Numero"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="email" class="form-control" name="email"placeholder="Email">
                        <span class="glyphicon glyphicon-envelope form-control-feedback email"></span>
                    </div>
                    <input type="hidden" name="opc"  class="submit" value="Registrar_Integrantes">
                    <footer>
                        <button type="submit" class="btn btn-primary" >Registrar
                        </button>
                    </footer>
                </form>                  
            </div><!-- /.form-box -->
        </div><!-- /.register-box -->     


            <!-- jQuery 2.1.4 -->
            <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
            <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
            <script src="../../plugins/iCheck/icheck.min.js" type="text/javascript"></script>

            <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
            <link rel="stylesheet" href="../../css/jquery.datetimepicker.css">
            <script src="//code.jquery.com/jquery-1.10.2.js"></script>
            <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
            <script src="../../js/jquery.datetimepicker.js"></script>

            <script>
               /* $(document).ready(function () {
                    var b = $('#tbodys');
                    $(".btnGuardar").click(function () {
                        alert()
                        $.post("../../integrantes", $(".form_int").serialize(), function (objJson) {
                            alert();
                        });

                    });

                });
                function re_Integrantes_equipos() {
                    var nombre = $(".Nombre").val();
                    var apellido = $(".Apellido").val();
                    var camiseta = $(".Camiseta").val();
                    var numero = $(".Numero").val();
                    var dni = $(".dni").val();
                    var Correo = $(".correro").val();
                    $.post("../")
                    // $.post("../../", "opc=reporte_datos_genereales&nombre=" + nombre + "&apellido=" + apellido + "&correo=" + correo + "&numero=" + numero, function (objJson) {

                }
                $(function () {
                    $('input').iCheck({
                        checkboxClass: 'icheckbox_square-blue',
                        radioClass: 'iradio_square-blue',
                        increaseArea: '20%' // optional
                    });
                });


*/
            </script>

