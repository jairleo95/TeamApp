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
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
        <link href="../../../plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css">
        <link href="../../plugins/iCheck/all.css" rel="stylesheet" type="text/css">
        <link href="../../plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">
        <link href="../../plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
        <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css">
        <link href="../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css">
        <link href="../../plugins/iCheck/all.css" rel="stylesheet" type="text/css">
    </head>
    <body class="box box-primary">
        <div class="box box-primary">

            <div class="container">
                <div class="register-logo">
                    <a href="../../Principal.jsp"><b>TEAM</b>App</a>
                </div>
                <div class="page-header">
                    <h1>Registro de Integrantes de Equipos</h1>
                </div>
                <form action="../../integrantes" id="checkout-form" class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-xs-3">Nombres:</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="nombre" placeholder="Nombres" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Apellido Paterno</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="ape_paterno" placeholder="Apellido Paterno" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Apellido Materno:</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="ape_materno" placeholder="Apellido Materno" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Codigo Estudiante:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="co_estudiante" placeholder="Codigo Estudiante" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">N° Camiseta:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="nu_camiseta" placeholder="N° Camiseta" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">N° DNI:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="dni" placeholder="N° DNI" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">N° Celular:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="cell" placeholder="N° Celular" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Email:</label>
                        <div class="col-xs-9">
                            <input type="email" class="form-control" name="email" placeholder="Email" required="">
                        </div>
                    </div>
                    <input type="hidden" name="opc"  class="submit" value="Registrar_Integrantes">
                    <div class="form-group">
                        <footer>
                            <div class="col-xs-offset-3 col-xs-9">
                                <button type="submit" class="btn btn-primary">Registrar</button>
                                <input type="reset" class="btn btn-default" value="Limpiar">
                            </div>
                        </footer>
                    </div>
                </form>                  
            </div>
        </div>  
        <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../plugins/iCheck/icheck.min.js" type="text/javascript"></script>

        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="../../css/jquery.datetimepicker.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script src="../../js/jquery.datetimepicker.js"></script>

        <script>
            function solonumeros(e) {
                key = e.keyCode || e.which;
                teclado = String.fromCharCode(key);
                numeros = "0123456789";
                especiales = "8-37-38-46";//array
                teclado_especial = false;
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        teclado_especial = true;
                    }
                }
                if (numeros.indexOf(teclado) == -1 && !teclado_especial) {
                    return false;
                }
            }
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

