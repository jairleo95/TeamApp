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
        <title>Programar Juego</title>
        <link rel="stylesheet" href="//code.jquery.com|/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="../../../css/jquery.datetimepicker.css">

        <!-- Bootstrap 3.3.4 -->
        <link href="../../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="../../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="../../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <style>
        th{
            text-align: center;
            background-color: #4682B4;
            color: white;
        }
        td{
            //text-align: center;
            background-color: #CCD8FF;
            color: black;
        }

    </style>

    <body class="skin-blue sidebar-mini">

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper" style="margin-left:0px;">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>Champion FIA<small>Programación Partidos</small>
                </h1>
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="box">
                    <br> Tipo Juego: 
                    <select class="tipo_juego">
                        <option value="1">Eliminatorias</option>
                        <option value="2">Serie</option>
                    </select>
                    Tiempo espera: 
                    <input class="tiempo_espera" type="number"/>
                    Tiempo juego 
                    <input class="tiempo_juego" type="number"/>
                    <div class="col-lg-2 col-xs-10">
                        <input type="hidden" value="0" class="es_cronograma">
                        <button class="btn btn-block btn-success " id='btn_cal'>Calcular</button>
                    </div>
                    <br>
                    <div class="box-title" style="margin-left: 1%">
                        <br> <strong><h3 >Futsal</h3 ></strong>
                    </div><!-- /.box-header -->
                    <div class="box-body tablas">
                        <table class="table table-bordered ">
                            <thead>
                                <tr><th colspan="8"> CANCHA NRO 1 </th></tr>
                                <tr><th rowspan="2"> NRO </th><th colspan="3"> ENCUENTROS </th><th rowspan="2"> TIEMPO </th><th colspan="2"> HORA </th><th rowspan="2"> SERIE </th></tr>
                                <tr><th colspan=""> EQUIPO</th><th colspan=""> VS </th><th colspan=""> EQUIPO </th><th colspan=""> HORA INICIO</th><th colspan=""> HORA FIN </th>  </tr>
                            </thead>
                            <tbody class='tbodys'>
                            </tbody>
                        </table>
                    </div><!-- /.box-body -->
                    <br>
                    <div class="col-lg-2 col-xs-10">
                        <!--<button class="btn btn-block btn-primary btn_terminar">Terminar</button>-->
                    </div>
                    <br>
                </div><!-- /.box -->

            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../../../css/jquery.datetimepicker.css">
    <script src="../../../js/jquery-1.11.1.min.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="../../../js/jquery.datetimepicker.js"></script>

    <!-- jQuery 2.1.4 Genera error -->
    <!--<script src="../../../plugins/jQuery/jQuery-2.1.4.min.js"></script>-->
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Slimscroll -->
    <script src="../../../plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../../../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../../../dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../../dist/js/demo.js" type="text/javascript"></script>
    <script>
        function calcular_partidos() {
            if ($(".es_cronograma").val() == "1") {
                if (confirm("se perderán los datos ya calculados anteriormente, ¿desea volver a calcular?")) {
                    $.post("../../../programacion_partido", "opc=Nuevo_Calculo&id_torneo=TOR-00000000000001" + "" + "&id_cat_juego=CTJ-00000000000001" + "" + "&tipo_juego=" + $(".tipo_juego").val() + "&tiempo_juego=" + $(".tiempo_juego").val() + "&tiempo_espera=" + $(".tiempo_espera").val(), function(objJson) {
                        listar_cronograma_loza();
                    });
                }
            } else {
                $.post("../../../programacion_partido", "opc=Progamar_Juego&id_torneo=TOR-00000000000001" + "" + "&id_cat_juego=CTJ-00000000000001" + "" + "&tipo_juego=" + $(".tipo_juego").val(), function(objJson) {
                    listar_cronograma_loza();
                });
            }
        }
        function listar_cronograma_loza() {
            var d = "opc=ListarLozas_Horario&id_torneo=TOR-00000000000001" + "" + "&id_cat_juego=CTJ-00000000000001" + "" + "&tipo_juego=" + $(".tipo_juego").val();
            var texto = '';
            $.post("../../../programacion_partido", d, function(objJson) {
                var lista = objJson.lista;
                $(".tbodys").empty();
                for (var i = 0; i < lista.length; i++) {
                    $(".es_cronograma").val("1");
                    if (lista[i].finalista == 1) {
                        texto += '<tr class="success">';
                        texto += '<td>' + (i + 1) + ' (FINAL)</td>';
                    } else {
                        texto += '<tr>';
                        texto += '<td>' + (i + 1) + '</td>';
                    }
                    if (typeof lista[i].id_equi_1 === 'undefined') {
                        texto += '<td>No definido</td>';
                    } else {
                        texto += '<td>' + lista[i].no_equipo_1 + '</td>';
                    }
                    texto += '<td>vs</td>';
                    if (typeof lista[i].id_equi_2 === 'undefined') {
                        texto += '<td>No definido</td>';
                    } else {
                        texto += '<td>' + lista[i].no_equipo_2 + '</td>';
                    }
                    texto += '<td> 20 min</td>';
                    texto += '<td>' + lista[i].ho_ini + '</td>';
                    texto += '<td>' + lista[i].ho_fin + '</td>';
                    if (typeof lista[i].id_serie === 'undefined') {
                        texto += '<td> - </td>';
                    } else {
                        texto += '<td>' + lista[i].id_serie + '</td>';
                    }
                    texto += '</tr>';
                    if ((lista.length - 1) !== i) {
                        var cadena = lista[i + 1].id_loza;
                        var array = cadena.split("-");
                        var nro = parseInt(array[1]);
                        if (lista[i].id_loza + "" !== lista[i + 1].id_loza + "") {
                            texto += '<tr><th colspan="8"><center> CANCHA NRO ' + nro + '<center> </th></tr>';
                            texto += '<tr><th rowspan="2"> NRO </th><th colspan="3"> ENCUENTROS </th><th rowspan="2"> TIEMPO </th><th colspan="2"> HORA </th><th rowspan="2"> SERIE </th>';
                            texto += '</tr><tr><th colspan=""> EQUIPO</th><th colspan=""> VS </th><th colspan=""> EQUIPO </th><th colspan=""> HORA INICIO</th>';
                            texto += '<th colspan=""> HORA FIN </th> </tr>';
                        }
                    }
                }
                $(".tbodys").append(texto);
                texto = '';
            });
        }
        $(document).ready(function() {
            listar_cronograma_loza();
            $(".fe_inicio_t").datetimepicker();
            $("#").click(function() {
                cal_can();
            });
            $("#btn_cal").click(function() {
                $('.tablas').show('slow');
                calcular_partidos();
            });
        });
    </script>


</html>
