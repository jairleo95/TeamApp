<%-- 
    Document   : Registrar_integrantes_Equipos
    Created on : 03/06/2015, 03:13:36 PM
    Author     : Alexander
--%>
<%@page import="pe.edu.upeu.application.model.V_Categoria_Juego"%>
<jsp:useBean id="Listar_catgeria_juego_eq" scope="application" class="java.util.ArrayList"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <meta charset="UTF-8">
        <title>REGISTRO DE INTEGRANTE</title>
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
                        <label class="control-label col-xs-3">Categoria de Equipo</label>
                        <div class="col-xs-9">
                            <select name="categoria" class="form-control" required="" > 
                                <option value="">[Seleccione]</option>
                                <%for (int i = 0; i < Listar_catgeria_juego_eq.size(); i++) {
                                        V_Categoria_Juego c = new V_Categoria_Juego();
                                        c = (V_Categoria_Juego) Listar_catgeria_juego_eq.get(i);
                                %>
                                <option value="<%=c.getId_categoria_juego()%>"><%=c.getNo_categoria()%></option>
                                <%}%>
                            </select>
                            <input type="hidden" value="<%=request.getParameter("id_equipo")%>" name="id_equipo">
                            <input type="hidden" value="<%=request.getParameter("id_torneo")%>" name="id_torneo">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Nombres:</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="nombre" onkeypress="return soloLetras(event)" placeholder="Nombres" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Apellido Paterno</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="ape_paterno" onkeypress="return soloLetras(event)" placeholder="Apellido Paterno" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">Apellido Materno:</label>
                        <div class="col-xs-9">
                            <input type="text" class="form-control" name="ape_materno" onkeypress="return soloLetras(event)" placeholder="Apellido Materno" required="">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-xs-3">Codigo Estudiante:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="co_estudiante" onkeypress="return Num9(event, this)" onkeyUp="return ValNumero(this);" placeholder="Codigo Estudiante" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">N° Camiseta:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="nu_camiseta" onkeypress="return Num3(event, this)" onkeyUp="return ValNumero(this);" placeholder="N° Camiseta" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">N° DNI:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="dni" onkeypress="return Num(event, this)" onkeyUp="return ValNumero(this);" maxlength="8" size="20" placeholder="N° DNI" required="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-xs-3">N° Celular:</label>
                        <div class="col-xs-9">
                            <input type="number" class="form-control" name="cell" onkeypress="return Num9(event, this)" onkeyUp="return ValNumero(this);" maxlength="9"placeholder="N° Celular" required="">
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

        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Lista de Integrantes</h3>
                <div class="box-tools">
                    <div class="input-group">
                        <input type="text" name="table_search" class="form-control input-sm pull-right" style="width: 150px;" placeholder="Search">
                        <div class="input-group-btn">
                            <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </div>
            </div><!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
                <table class="table table-hover">
                    <tbody>
                    <th>#</th>
                    <th>Categoria de Equipo</th>
                    <th>Nombre</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Codigo Estudiante</th>
                    <th>N° Camiseta</th>
                    <th>DNI</th>
                    <th>N° Celular</th>
                    <th>Email</th>
                    </tbody>
                    <tbody>
                    </tbody>
                </table>
            </div><!-- /.box-body -->
        </div>
        <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../../plugins/iCheck/icheck.min.js" type="text/javascript"></script>

        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="../../css/jquery.datetimepicker.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script src="../../js/jquery.datetimepicker.js"></script>

        <SCRIPT LANGUAGE="JavaScript">
                                function Num3(e, field) {
                                    key = e.keyCode ? e.keyCode : e.which
                                    // backspace
                                    if (key == 8)
                                        return true
                                    // 0-9
                                    if (key > 47 && key < 58) {
                                        if (field.value == "")
                                            return true
                                        regexp = /.[0-9]{2}$/
                                        return !(regexp.test(field.value))
                                    }
                                    // .
                                    if (key == 46) {
                                        if (field.value == "")
                                            return false
                                        regexp = /^[0-9]+$/
                                        return regexp.test(field.value)
                                    }
                                    // other key
                                    return false
                                }
                                function Num(e, field) {
                                    key = e.keyCode ? e.keyCode : e.which
                                    // backspace
                                    if (key == 8)
                                        return true
                                    // 0-9
                                    if (key > 47 && key < 58) {
                                        if (field.value == "")
                                            return true
                                        regexp = /.[0-9]{7}$/
                                        return !(regexp.test(field.value))
                                    }
                                    // .
                                    if (key == 46) {
                                        if (field.value == "")
                                            return false
                                        regexp = /^[0-9]+$/
                                        return regexp.test(field.value)
                                    }
                                    // other key
                                    return false
                                }
                                function Num9(e, field) {
                                    key = e.keyCode ? e.keyCode : e.which
                                    // backspace
                                    if (key == 8)
                                        return true
                                    // 0-9
                                    if (key > 47 && key < 58) {
                                        if (field.value == "")
                                            return true
                                        regexp = /.[0-9]{8}$/
                                        return !(regexp.test(field.value))
                                    }
                                    // .
                                    if (key == 46) {
                                        if (field.value == "")
                                            return false
                                        regexp = /^[0-9]+$/
                                        return regexp.test(field.value)
                                    }
                                    // other key
                                    return false
                                }


        </script>
        <script>
            function Solo_Numerico(variable) {
                Numer = parseInt(variable);
                if (isNaN(Numer)) {
                    return "";
                }
                return Numer;
            }
            function ValNumero(Control) {
                Control.value = Solo_Numerico(Control.value);
            }

            function soloLetras(e) {
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
                especiales = "8-37-39-46";

                tecla_especial = false
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

                if (letras.indexOf(tecla) == -1 && !tecla_especial) {
                    return false;
                }
            }
            function listar_integrantes() {
                var b = $("#listartodo");
                var texto = '';
                $.post("../../reporte", "opc=reporte_datos_genereales&" + b, function (objJson) {
                    if (objJson.rpta == -1) {
                        $('.div_t').empty();
                        alert(objJson.mensaje);
                        return;
                    }
                    b.empty();
                    var lista = objJson.lista;
                    if (lista.length > 0) {
                        for (var i = 0; i < lista.length; i++) {
                            texto += '<tr role="row" class="odd">';
                            texto += '<td class>' + (i + 1) + '</td>';

                            texto += '</tr>';
                            $('.div_t').empty();
                        }
                        b.append(texto);
                    } else {
                        $('.div_t').empty();
                        b.append("<td colspan='11' align='center'><strong>NO SE ENCONTRARON DATOS</strong></td>");
                    }
                });

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

