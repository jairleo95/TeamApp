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
        <title>Champions FIA</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="../../../css/jquery.datetimepicker.css">
    </head>
    <style>
        table, th, td {
            border: 1px solid black;
        }
        table{
            // position: absolute;top:23px;left:45px;
        }
    </style>
    <body>

        <h1>Champion FIA</h1>
        <h3>Nro de Canchas: <input type="text" class="canchas"></h3>
        <h3> Fecha - Hora de Incio de torneo:<input type="text" class="fe_inicio_t"/></h3> 
        <button id="btn">calcular</button>
        <fieldset class="tablas">
            <!-- <table ><thead><tr><th colspan="7"> CANCHA NRO 1 </th></tr>
                     <tr><th rowspan="2"> NRO </th><th colspan="3"> ENCUENTROS </th><th rowspan="2"> TIEMPO </th><th colspan="2"> HORA </th>
                     </tr><tr><th colspan=""> EQUIPO</th><th colspan=""> VS </th><th colspan=""> EQUIPO </th><th colspan=""> HORA INICIO</th>
                         <th colspan=""> HORA FIN </th>  </tr></thead> <tbody class="tbodys"></tbody></table>-->
        </fieldset>

    </body>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../../../css/jquery.datetimepicker.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="../../../js/jquery.datetimepicker.js"></script>
    <script>
        function ListarLozas_Horarios() {
            var d = "opc=ListarLozas_Horario";
            $.post("../../../equipos", d, function(objJson) {


            });
        }
        $(document).ready(function() {
            $(".fe_inicio_t").datetimepicker();
            $("#").click(function() {
                cal_can();
            });
            $("#btn").click(function() {
                ListarLozas_Horarios();

            });
        });


        //TABLAS
        function cal_can() {
            var field = $('.tablas');
            var texto = '';
            var canchas = $('.canchas').val();
            // alert(canchas)
            for (var i = 0; i < canchas; i++) {
                texto += '<table ><thead><tr><th colspan="7"> CANCHA NRO ' + (i + 1) + ' </th></tr>';
                texto += '<tr><th rowspan="2"> NRO </th><th colspan="3"> ENCUENTROS </th><th rowspan="2"> TIEMPO </th><th colspan="2"> HORA </th>';
                texto += '</tr><tr><th colspan=""> EQUIPO</th><th colspan=""> VS </th><th colspan=""> EQUIPO </th><th colspan=""> HORA INICIO</th>';
                texto += '<th colspan=""> HORA FIN </th>  </tr></thead> <tbody ></tbody></table>';
                field.append(texto);
                texto = "";
            }

        }

        /*$("#btn").click(function() {
         field.empty()
         var torneo = "TOR-00000000000001";
         $.ajax({
         url: "../../../equipos",
         type: "POST",
         data: "opc=Cantidad_Equipos&id_torneo=" + torneo.value
         }).done(function(e) {
         e = 4;
         alert(e)
         for (var i = 0; i < e; i++) {
         texto += '<table ><thead><tr><th colspan="7"> CANCHA NRO ' + (i + 1) + ' </th></tr>';
         texto += '<tr><th rowspan="2"> NRO </th><th colspan="3"> ENCUENTROS </th><th rowspan="2"> TIEMPO </th><th colspan="2"> HORA </th>';
         texto += '</tr><tr><th colspan=""> EQUIPO</th><th colspan=""> VS </th><th colspan=""> EQUIPO </th><th colspan=""> HORA INICIO</th>';
         texto += '<th colspan=""> HORA FIN </th>  </tr></thead> <tbody ></tbody></table>';
         
         field.append(texto);
         texto = "";
         }
         });
         });*/





    </script>


</html>
