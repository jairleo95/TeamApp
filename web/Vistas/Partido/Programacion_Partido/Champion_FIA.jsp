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
        $(document).ready(function() {
            $(".fe_inicio_t").datetimepicker();
            $("#").click(function() {
                cal_can();
            });
        });

        var field = $('.tablas');
        var texto = '';
        //TABLAS
        function cal_can() {
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

        $("#btn").click(function() {
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
        });
        
         function ListarEC() {
              //  var data = $('.form_f').serializeArray();
                var d = "opc=list_tablas";
               /* jQuery.each(data, function(index, field) {
                    d += "&" + field.name + "=" + field.value;
                });*/ $.post("../../../equipos?", d, function(objJson) {
                $.post("../../../equipos?", d, function(objJson) {
                    var lista = objJson.lista;
                    //alert(lista)
                    if (lista.length > 1) {

                        var t = "<tr>";
                        for (var i = 0; i < lista.length; i++) {
                          
                            t += "<td>" + (i + 1) + "</td>";
                            t += "<td>" + lista[i].no_tra + " " + lista[i].ap_pat + " " + lista[i].ap_mat + "</td>";
                            t += "<td>" + ec_p + "</td>";
                            t += "<td>" + ec_a + "</td>";
                            t += "<td>" + lista[i].no_usuario + "</td>";
                            t += "<td>" + lista[i].fe_modi + "</td>";
                            if (lista[i].es_reg == '1') {
                                t += "<td><center>Si</center></td>";
                            } else {
                                t += "<td class='smart-form'><center><label class='toggle'><input type='checkbox' value=" + i + " name='checkbox-toggle' class='registrado' ><i data-swchon-text='SI' data-swchoff-text='NO'></i></label><center> </td>";
                            }
                            t += "<td><input type='hidden' class='id_ec" + i + "' value='idec=" + lista[i].id_ec + "'><center><a href='../../../RHistorial?opc=Detalle_hist_ec&idtr=" + lista[i].id_tra + "&name=" + lista[i].no_tra + " " + lista[i].ap_pat + " " + lista[i].ap_mat + "'  class='btn btn-primary btn-labeled'>Ver Detalle <i class='fa fa-arrow-circle-right' ></i></a><center> </td></tr>";
                        }
                        crear_t();
                        $('.tbodys').append(t);
                        $('.tabla_t').DataTable();
                    }
                });
                $(".btnCancelar").click(function() {
                    $('.form_f')[0].reset();
                    crear_t();
                    $('.tabla_t').DataTable();
                });
                function crear_t() {
                    /* var text = '<table class="tabla_t table table-bordered table-hover table-striped"><thead><tr><th class="text-center semi-bold">Nro</th>';
                     text += '<th class="text-center semi-bold">Trabajador</th><th class="text-center semi-bold">Detalle</th></tr></thead><tbody class="tbodys">';
                     text += '</tbody></table>';
                     $('.cont_t').empty();
                     $('.cont_t').append(text);*/

                    var text = '<table class="tabla_t table table-bordered table-hover table-striped"><thead><tr><th class="text-center semi-bold">Nro</th>';
                    text += '<th class="text-center semi-bold">Trabajador</th><th class="text-center semi-bold">Es.Civil Pasado</th><th class="text-center semi-bold">Es.Civil Actual</th>';
                    text += '<th class="text-center semi-bold">Uuario</th><th class="text-center semi-bold">Fe.Modificacion</th><th class="text-center semi-bold">Registrado</th> <th class="text-center semi-bold">Detalle</th> </tr> </thead><tbody class="tbodys">';
                    text += '</tbody></table>';
                    $('.cont_t').empty();
                    $('.cont_t').append(text);
                }


            }

    </script>


</html>
