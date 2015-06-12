<%-- 
    Document   : Registro_Delegados
    Created on : 10/06/2015, 11:33:00 AM
    Author     : Erick Alexander
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
    <body>
        <div class="container">
            <div class="register-logo">
                <a href="../../Principal.jsp"><b>TEAM</b>App</a>
            </div>
            <div class="page-header">
                <h1>Registro de Nuevos Usuarios</h1>
            </div>
            <form action="../../nuevousuario" class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-xs-3">Nombres:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" name="nombre" placeholder="Nombres">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3">Apellido Paterno:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" name="ape_paterno" placeholder="Apellido Paterno">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3">Apellido Materno:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" name="ape_materno" placeholder="Apellido Materno">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" id="numero">Codigo Universitario:</label>
                    <div class="col-xs-9">
                        <input type="number" class="form-control" onkeypress="return  solonumeros(event)" name="c_uni"placeholder="Codigo Universitario" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3" id="numero">Celular:</label>
                    <div class="col-xs-9">
                        <input type="number" class="form-control" onkeypress="return  solonumeros(event)" name="cell"placeholder="Celular" >
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3">N. Documento:</label>
                    <div class="col-xs-9">
                        <input type="number" class="form-control" onkeypress="return solonumeros(event)" onpaste="return false" name="dni" required="" placeholder="N° Documento">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3">Email:</label>
                    <div class="col-xs-9">
                        <input type="email" class="form-control" name="email" placeholder="Email">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3">Contraseña:</label>
                    <div class="col-xs-9">
                        <input type="password" class="form-control" name="pass" placeholder="Contraseña">
                    </div>
                </div>
                <br>
                <input type="hidden" name="opc"  class="submit" value="Registrar_Integrantes">               
                <div class="form-group">
                    <footer>
                        <div class="col-xs-offset-3 col-xs-9">
                            <button type="submit" class="btn btn-primary"> Registrar</button>
                            <input type="reset" class="btn btn-default" value="Limpiar">
                        </div>
                    </footer>
                </div>

            </form>
        </div>
        <!-- Js vinculados -->
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script src="js/responsive.js"></script>
        <script src="js/bootstrap.min.js"></script>


        <div id="window-resizer-tooltip" style="display: none;">
            <a href="#" title="Edit settings"></a>
            <span class="tooltipTitle">Window size: </span>
            <span class="tooltipWidth" id="winWidth">1920</span> x <span class="tooltipHeight" id="winHeight">1050</span>
            <br><span class="tooltipTitle">Viewport size: </span>
            <span class="tooltipWidth" id="vpWidth">1362</span> x <span class="tooltipHeight" id="vpHeight">989</span>
        </div>
    </body>
    <script>
                            function validarSiNumero(object)
                            {
                                numero = object.value;
                                if (!/^([0-9])*$/.test(numero))
                                    object.value = numero.substring(0, numero.length - 1);
                            }
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
    </script>
</html>
