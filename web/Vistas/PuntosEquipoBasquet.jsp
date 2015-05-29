<%-- 
    Document   : PuntosEquipoBasquet
    Created on : 28/05/2015, 11:38:34 PM
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
        <%@include file="../WEB-INF/jspf/top2.jspf" %>
        <div class="jumbotron">
        <center>
        <div style="width: 600px;">
            <br>
            <table class="table table-bordered">
                <tr>
                    <th>Equipo</th>
                    <th>JJ</th>
                    <th>JG</th>
                    <th>JP</th>
                    <th>DIF</th>
                    <th>PV</th>    
                    <th>GC</th>
                    <th>GV</th>
                    <th>PAF</th>
                    <th>PEC</th>
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
