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
        <title>JSP Page</title>
    </head>
    <body>
        <h1> TORNEOS ABIERTOS A INSCRIBIR SU EQUIPO</h1>
        <table>
            <thead>
            <th>nro</th>
            <th>Torneo</th>
            <th>Insertar equipo</th>
        </thead>
        <tbody>
        <%for(int i=0;i<Listar_Torneo.size();i++){
        V_Torneo v=new V_Torneo();
        v=(V_Torneo)Listar_Torneo.get(i);
        %>
        <td><%=i+1%></td>
        <td><%=v.getNo_torneo()%></td>
        <td><a href="../../equiposs?opc=Ingresar_registro&id_torneo=<%=v.getId_torneo()%>">Ingresar Equipo</a></td>
        <%}%>
    </tbody>
</table>
</body>
</html>
