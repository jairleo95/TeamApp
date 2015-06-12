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
                    <br>
                    <div class="col-lg-12 col-xs-10">
                        <div class="col-lg-2 col-xs-10">
                            <button class="btn btn-block btn-success " id='btn_cal'>Calcular</button>
                        </div>
                        <div class="col-lg-6 col-xs-10">
                        </div>
                        <div class="col-lg-2 col-xs-10">
                            <button class="btn btn-block btn-primary " id='btn_cal'>Guardar</button>
                        </div>
                        <div class="col-lg-2 col-xs-10">
                            <button class="btn btn-block btn-danger  " id='btn_cal'>Cancelar</button>
                        </div>
                    </div>
                    <br>
                    <div class="box-title" style="margin-left: 1%">
                        <br> <strong><h3 >Futsal</h3 ></strong>
                    </div><!-- /.box-header -->
                    <div class="box-body tablas">
                        <table class="table table-bordered ">
                            <thead>
                                <tr><th colspan="7"> CANCHA NRO 1 </th></tr>
                                <tr><th rowspan="2"> NRO </th><th colspan="3"> ENCUENTROS </th><th rowspan="2"> TIEMPO </th><th colspan="2"> HORA </th></tr>
                                <tr><th colspan=""> EQUIPO</th><th colspan=""> VS </th><th colspan=""> EQUIPO </th><th colspan=""> HORA INICIO</th><th colspan=""> HORA FIN </th>  </tr>
                            </thead>
                            <tbody class='tbodys'>

                            </tbody>

                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->

            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->



    </body>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="../../../css/jquery.datetimepicker.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
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
        function ListarLozas_Horarios() {

            var d = "opc=ListarLozas_Horario";
            var texto = '';
            $(".tbodys").empty();
            $(".tbodys").append('<tr><td colspan="7"><center> CARGANDO...<center> </td></tr>');
            $.post("../../../programacion_partido", d, function(objJson) {
                var lista = objJson.lista;
                $(".tbodys").empty();

                for (var i = 0; i < lista.length; i++) {

                    texto += '<tr>';
                    texto += '<td>' + (i + 1) + '</td>';
                    if (typeof lista[i].id_equi_1 === 'undefined') {
                        texto += '<td>winner</td>';
                    } else {
                        texto += '<td>' + lista[i].no_equipo_1 + '</td>';
                    }
                    texto += '<td>vs</td>';
                    if (typeof lista[i].id_equi_2 === 'undefined') {
                        texto += '<td>winner</td>';
                    } else {
                        texto += '<td>' + lista[i].no_equipo_2 + '</td>';
                    }
                    texto += '<td> 20 min</td>';
                    texto += '<td>' + lista[i].ho_ini + '</td>';
                    texto += '<td>' + lista[i].ho_fin + '</td>';
                    texto += '</tr>';
                    if ((lista.length - 1) !== i) {
                        var cadena = lista[i + 1].id_loza;
                        var array = cadena.split("-");
                        var nro = parseInt(array[1]);
                        if (lista[i].id_loza + "" !== lista[i + 1].id_loza + "") {
                            texto += '<tr><th colspan="7"><center> CANCHA NRO ' + nro + '<center> </th></tr>';
                            texto += '<tr><th rowspan="2"> NRO </th><th colspan="3"> ENCUENTROS </th><th rowspan="2"> TIEMPO </th><th colspan="2"> HORA </th>';
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
            $(".tablas").hide();
            $(".fe_inicio_t").datetimepicker();
            $("#").click(function() {
                cal_can();
            });
            $("#btn_cal").click(function() {
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
