<%-- 
    Document   : ProgramarPartido
    Created on : 28-may-2015, 23:11:12
    Author     : Jairleo95
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="../../../css/jquery.datetimepicker.css">
    </head>
    <body>
    <center>
        Fecha - Hora de Incio de torneo:<br><input type="text" class="fe_inicio_t"/><br>
        Numero de Lozas Deportivas:<br><input type="number" class="num_loz"/><br>
        <br><button class="Calcular">Calcular</button><br>
        <table >
            <tr>
                <td>Serie</td>
                <td>Equipo1</td>
                <td>Equipo2</td>
                <td>Desde</td>
                <td>Hasta</td>
            </tr>
        </table>
    </center>
</body>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="../../../js/jquery.datetimepicker.js"></script>
<script type="text/javascript">
    $(document).ready(function() {

        $(".fe_inicio_t").datetimepicker();
    });
</script>

</html>
