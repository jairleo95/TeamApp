<%-- 
    Document   : Listar_partidos
    Created on : 11-jun-2015, 20:57:07
    Author     : Laptop Sistemas
--%>
<%@page import="pe.edu.upeu.application.model.V_Listar_partido"%>
<jsp:useBean class="java.util.ArrayList" scope="application"  id="Listar_Partido"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table>
            <thead>
            <th>nro</th>
            <th>equipo1</th>
            <th>equipo2</th>
            <th>Comenzar</th>
        </thead>
        <tbody>
            <%for (int i = 0; i < Listar_Partido.size(); i++) {
                    V_Listar_partido vl = new V_Listar_partido();
                    vl = (V_Listar_partido) Listar_Partido.get(i);
            %>
            <tr>
                <td><%=i + 1%></td>
                <td><%=vl.getNo_equipo_1()%></td>
                <td><%=vl.getNo_equipo_2()%></td>
                <td><a href="../../control_partido?opc=Comenzar_partido&id_juego=<%=vl.getId_juego()%>&id_eq_1=<%=vl.getId_cat_equipo_1()%>&id_eq_2=<%=vl.getId_cat_equipo_2()%>">Comenzar</a></td>
            </tr>
            <%}%>
        </tbody>
    </table>
</body>
</html>
