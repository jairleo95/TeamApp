<%-- 
    Document   : RegistarEquipos
    Created on : 22/05/2015, 10:36:09 AM
    Author     : Milton
--%>
<%@page import="pe.edu.upeu.application.model.V_Categoria_Juego"%>
<jsp:useBean id="Listar_catgeria_juego" scope="application" class="java.util.ArrayList"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
        <title>JSP Page</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.4 -->
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
        <!-- Theme style -->
        <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css">
    </head>    
    <body>
        <form action="../../equiposs" method="post">
            <div class="container">
                <input type="hidden" value="<%=request.getParameter("id_torneo")%>" name="id_torneo">
                
                <div class="register-logo">
                    <a><b>TEAM</b>App</a>
                </div>
                <div class="page-header" align="center">
                    <h1>Registro de Equipo</h1>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3">Nombre:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" name="nombre_t" placeholder="Nombre del equipo a participar">
                    </div>
                </div>
                <div class="form-group">
                    <label>Seleccione la Categoria</label>
                    <div class="checkbox" name="cbCategoria">
                        <%for (int e = 0; e < Listar_catgeria_juego.size(); e++) {
                                V_Categoria_Juego cj = new V_Categoria_Juego();
                                cj = (V_Categoria_Juego) Listar_catgeria_juego.get(e);
                        %>
                        <label>
                            <input type="checkbox" name="cat_juego" value="<%=cj.getId_categoria_juego()%>"><%=cj.getNo_categoria()%></label>
                            <%}%>
                    </div>
                </div>
                <h3 class="box-title"></h3>                
                <br>
                <div align="center">
                    <button type="submit" class="btn btn-primary btn-registrar" name="opc" value="Insertar_Equipo">Registrar</button>
                    <input type="reset" class="btn btn-default" value="Limpiar">
                </div>
                <br>
            </div>
        </form>
    </body>
    <script src="../../js/jquery-1.11.1.min.js" type="text/javascript"></script>
</html>
