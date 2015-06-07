<%-- 
    Document   : PuntosEquipoFutbol
    Created on : 28/05/2015, 10:18:46 AM
    Author     : SAMUEL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="pe.edu.upeu.application.factory.ConexPuntos"%>
<%@page import="java.sql.Connection"%>
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
             <thead>  
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
                    
                </tr>
             
              </thead>
              <tbody>
                    <tr>
                        <% Connection cx=ConexPuntos.getConex();
                           PreparedStatement ps=cx.prepareStatement("select nombre, (PG+PP+PE) as PJ, PG, PE,PP,GF,GC,(GF-GC) as DG, (3*PG+1*PE) as Puntos from equipo order by Puntos DESC, DG DESC");
                           ResultSet rs=ps.executeQuery();
                           while(rs.next())
                           {%>
                           <td><%=rs.getString(1)%></td>
                           <td><%=rs.getInt(2)%></td>
                           <td><%=rs.getInt(3)%></td>
                           <td><%=rs.getInt(4)%></td>
                           <td><%=rs.getInt(5)%></td>
                           <td><%=rs.getInt(6)%></td>
                           <td><%=rs.getInt(7)%></td>
                           <td><%=rs.getInt(8)%></td>
                    </tr> 
                    <%}%> 
              </tbody>                                                                   
            </table>
            </div>
        </center>
        </div>
        <%@include file="../WEB-INF/jspf/bottom.jspf" %>
        </body>
</html>
