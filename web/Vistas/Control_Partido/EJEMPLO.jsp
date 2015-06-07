<%-- 
    Document   : EJEMPLO
    Created on : 04-jun-2015, 20:01:10
    Author     : Jose
--%>

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
            <input type="hidden" value="id_juego" class="id_juego">
            <input type="hidden" value="id_quipo1" class="id_e_1">
            <input type="hidden" value="id_quipo2">
            <th><button class="suma_e_1">+</button></th>
            <th><button class="suma_e_2">+</button></th>
        </thead>
        <tbody>

        </tbody>
    </table>
</body>
<script src="../../js/jquery-1.11.1.min.js" type="text/javascript">
    $(document).ready(function (){
       $(".suma_e_1").click(function (){
           var id_equipo1=$(".id_e_1").val();
           var id_juego=$(".id_e_1").val();
           $.post("../../control_partido","opc=sumar_punto&id_cat_equi="+id_equipo1+"&id_juego="+id_juego,function (objJson){
               
           });
       })
           
        
    });
</script>

</html>
