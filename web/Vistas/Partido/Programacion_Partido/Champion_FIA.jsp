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

        <button id="btn">calcular</button>
        <fieldset class="tablas">
            <table ><thead><tr><th colspan="7"> CANCHA NRO 1 </th></tr>
                    <tr><th rowspan="2"> NRO </th><th colspan="3"> ENCUENTROS </th><th rowspan="2"> TIEMPO </th><th colspan="2"> HORA </th>
                    </tr><tr><th colspan=""> EQUIPO</th><th colspan=""> VS </th><th colspan=""> EQUIPO </th><th colspan=""> HORA INICIO</th>
                        <th colspan=""> HORA FIN </th>  </tr></thead> 
                <tbody class="tbodys">

                </tbody>
            </table>

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
            var texto = '';
            $(".tbodys").empty();
            $(".tbodys").append('<tr><td colspan="7"><center> CARGANDO...<center> </td></tr>');
            $.post("../../../equipos", d, function(objJson) {
                var lista = objJson.lista;
                $(".tbodys").empty();

                for (var i = 0; i < lista.length; i++) {
                    texto += '<tr>';
                    texto += '<td>' + (i + 1) + '</td>';
                    texto += '<td>' + lista[i].id_equi_1 + '</td>';
                    texto += '<td>vs</td>';
                    texto += '<td>' + lista[i].id_equi_2 + '</td>';
                    texto += '<td> 20 min</td>';
                    texto += '<td>' + lista[i].ho_ini + '</td>';
                    texto += '<td>' + lista[i].ho_ini + '</td>';
                    texto += '</tr>';
                    if ((lista.length - 1) !== i) {
                        var cadena = lista[i + 1].id_loza;
                        var array = cadena.split("-");
                        var nro = parseInt(array[1]);
                        if (lista[i].id_loza + "" !== lista[i + 1].id_loza + "") {
                            texto += '<tr><td colspan="7"><center> CANCHA NRO ' + nro + '<center> </td></tr>';
                            texto += '<tr><td rowspan="2"> NRO </td><td colspan="3"> ENCUENTROS </td><td rowspan="2"> TIEMPO </td><td colspan="2"> HORA </td>';
                            texto += '</tr><tr><td colspan=""> EQUIPO</td><td colspan=""> VS </td><td colspan=""> EQUIPO </td><td colspan=""> HORA INICIO</td>';
                            texto += '<td colspan=""> HORA FIN </td> </tr>';
                        }
                    }
                }

                $(".tbodys").append(texto);
                texto = '';

            });
        }
        $(document).ready(function() {
            $(".tablas").hide();
            $(".fe_inicio_t").datetimepicker();
            $("#").click(function() {
                cal_can();
            });
            $("#btn").click(function() {
                $('.tablas').show();
                ListarLozas_Horarios();
            });
        });


        //TABLAS
        /* function cal_can() {
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
         
         }*/

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
