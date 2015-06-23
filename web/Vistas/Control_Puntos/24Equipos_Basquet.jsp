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
        <%@include file="../../WEB-INF/jspf/jscss.jspf" %>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../../WEB-INF/jspf/top.jspf" %>
        <div class="jumbotron">
        <center>
                
        <div style="width: 600px;">
            <br>CANTIDAD DE EQUIPOS : 24
         <div><table class="table table-bordered">
             <thead>  
             <tr>
                    <th>Grupo A</th>
                    <th>Equipo</th>
                    <th>PJ</th>
                    <th>PG</th>                    
                    <th>PP</th>
                    <th>PF</th>
                    <th>PC</th>    
                    <th>DP</th>
                    <th>Puntos</th>
                    
                </tr>
             
              </thead>
              <tbody>
                    <tr>
                        <% Connection cx=ConexPuntos.getConex();
                           PreparedStatement ps=cx.prepareStatement("select b.NOM_EQUIP,a.PJ,a.PG,a.PP,a.GF,a.GC,a.DG,a.PUNTAJE from resultado a, equipo b, grupos c, TORNEO D, categoria e where a.ID_EQUIP = b.ID_EQUIP and c.ID_TORNEO = D.ID_TORNEO and c.ID_GRUPO=b.ID_GRUPO and  D.ID_TORNEO=10 and c.NOM_GRUPO='A' and e.NOM_CAT = 'Basquetboll' order by a.PUNTAJE DESC");
                           ResultSet rs=ps.executeQuery();
                           while(rs.next())
                           {%>
                           <td style="border: none;"></td>
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
            </table></div>
              
              <div><table class="table table-bordered">
             <thead>  
             <tr>   <th>Grupo B</th>
                    <th>Equipo</th>
                    <th>PJ</th>
                    <th>PG</th>
                    <th>PP</th>
                    <th>PF</th>
                    <th>PC</th>    
                    <th>DP</th>
                    <th>Puntos</th>                    
                </tr>             
              </thead>
              <tbody>
                    <tr>
                        <% PreparedStatement ps1=cx.prepareStatement("select b.NOM_EQUIP,a.PJ,a.PG,a.PP,a.GF,a.GC,a.DG,a.PUNTAJE from resultado a, equipo b, grupos c, TORNEO D, categoria e where a.ID_EQUIP = b.ID_EQUIP and c.ID_TORNEO = D.ID_TORNEO and c.ID_GRUPO=b.ID_GRUPO and  D.ID_TORNEO=10 and c.NOM_GRUPO='B' and e.NOM_CAT = 'Basquetboll' order by a.PUNTAJE DESC");
                           ResultSet rs1=ps1.executeQuery();
                           while(rs1.next())
                           {%>
                           <td style="border: none;"></td>
                           <td><%=rs1.getString(1)%></td>
                           <td><%=rs1.getInt(2)%></td>
                           <td><%=rs1.getInt(3)%></td>
                           <td><%=rs1.getInt(4)%></td>
                           <td><%=rs1.getInt(5)%></td>
                           <td><%=rs1.getInt(6)%></td>
                           <td><%=rs1.getInt(7)%></td>
                           <td><%=rs1.getInt(8)%></td>
                    </tr> 
                    <%}%> 
              </tbody>                                                                   
            </table></div>
            <div><table class="table table-bordered">
             <thead>  
             <tr>   <th>Grupo B</th>
                    <th>Equipo</th>
                    <th>PJ</th>
                    <th>PG</th>
                    <th>PP</th>
                    <th>PF</th>
                    <th>PC</th>    
                    <th>DP</th>
                    <th>Puntos</th>                    
                </tr>             
              </thead>
              <tbody>
                    <tr>
                        <% PreparedStatement ps2=cx.prepareStatement("select b.NOM_EQUIP,a.PJ,a.PG,a.PP,a.GF,a.GC,a.DG,a.PUNTAJE from resultado a, equipo b, grupos c, TORNEO D, categoria e where a.ID_EQUIP = b.ID_EQUIP and c.ID_TORNEO = D.ID_TORNEO and c.ID_GRUPO=b.ID_GRUPO and  D.ID_TORNEO=10 and c.NOM_GRUPO='C' and e.NOM_CAT = 'Basquetboll' order by a.PUNTAJE DESC");
                           ResultSet rs2=ps2.executeQuery();
                           while(rs2.next())
                           {%>
                           <td style="border: none;"></td>
                           <td><%=rs2.getString(1)%></td>
                           <td><%=rs2.getInt(2)%></td>
                           <td><%=rs2.getInt(3)%></td>
                           <td><%=rs2.getInt(4)%></td>
                           <td><%=rs2.getInt(5)%></td>
                           <td><%=rs2.getInt(6)%></td>
                           <td><%=rs2.getInt(7)%></td>
                           <td><%=rs2.getInt(8)%></td>
                    </tr> 
                    <%}%> 
              </tbody>                                                                   
            </table></div>
              <div><table class="table table-bordered">
             <thead>  
             <tr>   <th>Grupo B</th>
                    <th>Equipo</th>
                    <th>PJ</th>
                    <th>PG</th>
                    <th>PP</th>
                    <th>PF</th>
                    <th>PC</th>    
                    <th>DP</th>
                    <th>Puntos</th>                    
                </tr>             
              </thead>
              <tbody>
                    <tr>
                        <% PreparedStatement ps3=cx.prepareStatement("select b.NOM_EQUIP,a.PJ,a.PG,a.PP,a.GF,a.GC,a.DG,a.PUNTAJE from resultado a, equipo b, grupos c, TORNEO D, categoria e where a.ID_EQUIP = b.ID_EQUIP and c.ID_TORNEO = D.ID_TORNEO and c.ID_GRUPO=b.ID_GRUPO and  D.ID_TORNEO=10 and c.NOM_GRUPO='D' and e.NOM_CAT = 'Basquetboll' order by a.PUNTAJE DESC");
                           ResultSet rs3=ps3.executeQuery();
                           while(rs3.next())
                           {%>
                           <td style="border: none;"></td>
                           <td><%=rs3.getString(1)%></td>
                           <td><%=rs3.getInt(2)%></td>
                           <td><%=rs3.getInt(3)%></td>
                           <td><%=rs3.getInt(4)%></td>
                           <td><%=rs3.getInt(5)%></td>
                           <td><%=rs3.getInt(6)%></td>
                           <td><%=rs3.getInt(7)%></td>
                           <td><%=rs3.getInt(8)%></td>
                    </tr> 
                    <%}%> 
              </tbody>                                                                   
            </table></div>
            </div>
        </center>
        </div>
        <%@include file="../../WEB-INF/jspf/bottom.jspf" %>
        </body>
</html>
