<%-- 
    Document   : PuntosEquipoVoley
    Created on : 28/05/2015, 11:38:07 PM
    Author     : SAMUEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../WEB-INF/jspf/jscss.jspf" %>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/top1.jspf" %>
        <div class="jumbotron">
        <center>
        <div style="width: 600px;">
            <br>
            <table class="table table-bordered">
                <tr>
                    <th>Equipo</th>
                    <th>PJ</th>
                    <th>PG</th>
                    <th>PP</th>
                    <th>SF</th>
                    <th>SC</th>    
                    <th>DS</th>
                    <th>Puntos</th>
                    <th></th>
                </tr>
                <tr>
                    <td></td>    
                    <td></td>    
                    <td></td>    
                    <td></td>    
                    <td></td>    
                    <td></td>    
                    <td></td>    
                    <td></td>
                    <td>
                        <a href="" class="btn btn-primary btn-sm">Editar</a>
                        <a href="" class="btn btn-primary btn-sm">Eliminar</a>
                    </td>
                </tr>
            </table>
        </div>
        </center>
        </div>
        <%@include file="../WEB-INF/jspf/bottom.jspf" %>
        </body>
</html>
