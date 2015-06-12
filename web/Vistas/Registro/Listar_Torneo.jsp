<%-- 
    Document   : Listar_Torneo
    Created on : 11/06/2015, 09:43:14 PM
    Author     : MILTON
--%>
<%@page import="pe.edu.upeu.application.model.V_Torneo"%>
<jsp:useBean id="Listar_Torneo" scope="application" class="java.util.ArrayList"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.4 -->
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
        <!-- daterange picker -->
        <link href="../../plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css">
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
        <div class="register-logo">
            <a><b>TEAM</b>App</a>
        </div>
        <div class="page-header">
            <h1>Lista de Torneos</h1>
        </div>
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Resgitro de Equipo por Torneo</h3>
                <div class="box-tools">
                </div>
            </div>
            <div class="box-body table-responsive no-padding">
                <table class="table table-hover">
                    <tbody>
                    <th>#</th>
                    <th>Torneo</th>
                    <th>Ingrese</th>
                    </tbody>
                    <tbody>
                        <%for (int i = 0; i < Listar_Torneo.size(); i++) {
                                V_Torneo v = new V_Torneo();
                                v = (V_Torneo) Listar_Torneo.get(i);
                        %>
                        <tr><td><%=i + 1%></td>
                            <td><%=v.getNo_torneo()%></td>
                            <td><a href="../../equiposs?opc=Ingresar_registro&id_torneo=<%=v.getId_torneo()%>">Registre su Equipo</a></td></tr>
                            <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
