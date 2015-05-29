<%-- 
    Document   : PuntosEquipoFutbol
    Created on : 28/05/2015, 10:18:46 AM
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
        <%@include file="../WEB-INF/jspf/top.jspf" %>
        <div class="jumbotron">
        <center>
        <div style="width: 600px;">
            <br>
            <table class="table table-bordered">
                <tr>
                    <th>Equipo</th>
                    <th>PJ</th>
                    <th>PG</th>
                    <th>PE</th>
                    <th>PP</th>
                    <th>GF</th>
                    <th>GC</th>    
                    <th>DG</th>
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
