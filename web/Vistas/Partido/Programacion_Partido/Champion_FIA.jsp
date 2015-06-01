<!DOCTYPE html>
<html>
    <head>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    </head>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
    <body>
        
        <h1>Champion FIA</h1>
        <h3>Nro de Canchas: <input type="text" class="canchas"></h3>
        <h3> Fecha - Hora de Incio de torneo:<br><input type="text" class="fe_inicio_t"/></h3> 
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
        $(document).ready(function() {
            $(".fe_inicio_t").datetimepicker();
            $("#btn").click(function() {
                cal_can();
            });
        });

        var field = $('.tablas');
        var texto = '';
        function cal_can() {
            var canchas = $('.cachas').val(); 
            for(var i = 0 ; i < 2 ; i++){
            alert()
            texto += '<table ><thead><tr><th colspan="7"> CANCHA NRO 1 </th></tr>';
            texto += '<tr><th rowspan="2"> NRO </th><th colspan="3"> ENCUENTROS </th><th rowspan="2"> TIEMPO </th><th colspan="2"> HORA </th>';
            texto += '</tr><tr><th colspan=""> EQUIPO</th><th colspan=""> VS </th><th colspan=""> EQUIPO </th><th colspan=""> HORA INICIO</th>';
            texto += '<th colspan=""> HORA FIN </th>  </tr></thead> <tbody ></tbody></table>';
            field.append(texto);
            }
        }

    </script>
</html>
