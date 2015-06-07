<%-- 
    Document   : PuntosEquipoBasquet
    Created on : 28/05/2015, 11:38:34 PM
    Author     : SAMUEL
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="../WEB-INF/jspf/jscss.jspf" %>
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="../css/TablaPosicionamiento.css"/>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/top2.jspf" %>
        <div class="jumbotron">
        <center>
        <div style="width: 800px;">
            <br>  
            <%
                int[] equipos = {6,12,24,48};                
                Random r = new Random();
                int cant_tablas = 0;
                int num_equipos = 0;  
                int cant_equipos = r.nextInt(equipos.length);            
            %>
            
            CANTIDAD DE EQUIPOS: <% out.println(equipos[cant_equipos]);%>
            <%                               
                if (equipos[cant_equipos] == 6){
                   cant_tablas = 2;
                }
                if (equipos[cant_equipos] == 12){
                   cant_tablas = 4;
                }
                if (equipos[cant_equipos] == 24){
                   cant_tablas = 4;
                }
                if (equipos[cant_equipos] == 48){
                   cant_tablas = 8;
                }                
                for (int i=0;i<cant_tablas;i++){       
            %>
            <div>
                
                <table class="table table-bordered">
                    <tr>
                        <th>Grupo <%out.println(i+1);%></th>
                        <th>Equipo</th>
                        <th>PJ</th>
                        <th>PG</th>
                        <th>PP</th>
                        <th>PF</th>
                        <th>PC</th>
                        <th>DP</th>
                        <th>Puntos</th>
                    </tr>
                    <%                  
                        if (cant_tablas == 2){
                            num_equipos = 3;                            
                        }                        
                        if (cant_tablas == 8){
                            num_equipos = 6;                            
                        }   
                        if (cant_tablas == 4 && equipos[cant_equipos] == 12)
                        {
                            num_equipos = 3;
                        }
                        if (cant_tablas == 4 && equipos[cant_equipos] == 24)
                        {
                            num_equipos = 6;
                        }
                        for (int j=1;j<num_equipos+1;j++){
                    %>
                    <tr>
                        <td style=" border:none;"></td>
                        <td>Equipo <% out.println(j); %></td> 
                        <td></td> 
                        <td></td>    
                        <td></td>    
                        <td></td>    
                        <td></td>    
                        <td></td>    
                        <td></td>                        
                    </tr><%}%>
                        </table>
                </div>  <%}%>                         
        </div></center>
        </div>
        <%@include file="../WEB-INF/jspf/bottom.jspf" %>
        </body>
</html>
