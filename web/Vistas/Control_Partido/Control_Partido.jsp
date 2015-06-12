<%-- 
    Document   : Control_Partido
    Created on : 05-jun-2015, 4:48:43
    Author     : YW
--%>

<%@page import="pe.edu.upeu.application.dao.Control_PartidoDAO"%>
<%@page import="pe.edu.upeu.application.interfaces.InterfaceControl_Partido"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html >
    <% InterfaceControl_Partido p = new Control_PartidoDAO();%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control de Partidos</title>
        <link href="https://fonts.googleapis.com/css?family=Titillium+Web:200,300,400,600,700|Open+Sans:700,400,300" type="text/css" rel="stylesheet" ></link>
        <link rel="stylesheet" type="text/css" href="../../css/estilos.css">
        <link href = "../../bootstrap/css/bootstrap.min.css" rel = "stylesheet" type = "text/css" >
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="../../js/zepto.min.js"></script>
        <script src="http://hostredeando.ucoz.es/js/prefixfree.js" type="text/javascript"></script>
        <style>
            .gol2{
                float:left;
                padding-left:2em;

            }
            .table{
                border:3px;
                border-color: red;
            }

        </style>

        <style>
            .container {
                padding: 30px;width: 500px;
                text-align: center;
            }

            .timer {
                padding: 10px;
                background: #000000;
                overflow: hidden;
                display: inline-block;
                border: 7px solid #efefef;
                border-radius: 5px;
                position: relative;
                box-shadow:
                    0 -2px 10px 1px rgba(0, 0, 0, 0.75),
                    0 5px 20px -10px rgba(0, 0, 0, 1);

            }

            .cell {
                width: 0.60em;
                height: 40px;
                font-size: 50px;
                overflow: hidden;
                position: relative;
                float: left;
            }

            .numbers {
                width: 0.6em;
                line-height: 40px;
                font-family: digital, arial, verdana;
                text-align: center;
                color: #fff;

                position: absolute;
                top: 0;
                left: 0;


                text-shadow: 0 0 5px rgba(255, 255, 255, 1);
            }

            #timer_controls {
                margin-top: 5px;
            }
            #timer_controls label {
                box-shadow:
                    0 -2px 10px 1px rgba(0, 0, 0, 0.75),
                    0 5px 20px -10px rgba(0, 0, 0, 1);

                cursor: pointer;
                padding: 5px 10px;
                background: #efefef;
                font-family: arial, verdana, tahoma;
                font-size: 11px;
                border-radius: 0 0 3px 3px;border:1px solid #989293;
            }
            input[name="controls"] {display: none;}


            #stop:checked~.timer .numbers {animation-play-state: paused;}
            #start:checked~.timer .numbers {animation-play-state: running;}
            #reset:checked~.timer .numbers {animation: none;}

            .moveten {
                /*The digits move but dont look good. We will use steps now
                10 digits = 10 steps. You can now see the digits swapping instead of
                moving pixel-by-pixel*/
                animation: moveten 1s steps(10, end) infinite;
                /*By default animation should be paused*/
                animation-play-state: paused;
            }
            .movesix {
                animation: movesix 1s steps(6, end) infinite;
                animation-play-state: paused;
            }

            .second {animation-duration: 10s;}
            .tensecond {animation-duration: 60s;} /*60 times .second*/

            .milisecond {animation-duration: 1s;} /*1/10th of .second*/
            .tenmilisecond {animation-duration: 0.1s;}
            .hundredmilisecond {animation-duration: 0.01s;}

            .minute {animation-duration: 600s;} /*60 times .second*/
            .tenminute {animation-duration: 3600s;} /*60 times .minute*/

            .hour {animation-duration: 36000s;} /*60 times .minute*/
            .tenhour {animation-duration: 360000s;} /*10 times .hour*/

            @keyframes moveten {
                0% {top: 0;}
                100% {top: -400px;}
                /*height = 40. digits = 10. hence -400 to move it completely to the top*/
            }

            @keyframes movesix {
                0% {top: 0;}
                100% {top: -240px;}
                /*height = 40. digits = 6. hence -240 to move it completely to the top*/
            }

            @font-face {
                font-family: 'digital';
                src: url('http://thecodeplayer.com/uploads/fonts/DS-DIGI.TTF');

            </style>

        </head>
        <body style="background: #E6E6E6">
                <%
                    String id_eq_1 = request.getParameter("id_eq_1");
                    String id_eq_2 = request.getParameter("id_eq_2");
                    String id_juego = request.getParameter("id_juego");
                %>
                <section class="content">
                    <input type="hidden" class="id_jue" value="<%=id_juego.trim()%>">
                    <input type="hidden" class="id_e_cat1" value="<%=id_eq_1.trim()%>">
                    <input type="hidden" class="id_e_cat2" value="<%=id_eq_2.trim()%>">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="box-body"  style="background: #E0F8F7" align="center">
                                <div class="row" align="center">
                                    <label><%out.println(p.Mostrar_nombre(id_eq_1.trim()));%><br><img src="../../Imagen/real.png" width="220" height="170" alt="real" align="right"/></label><br>
                                    <label><%out.println(p.Mostrar_categoria_juego(id_juego.trim()));%></label>

                                </div>
                                <br>
                                <br>
                                <button type="button" class="btn btn-primary" onclick="AgregarGol(1)">Sumar gol</button>
                            </div>
                        </div>
                        <div class="col-md-6" >
                            <div class="box box-primary"  style="background: #E0F8F7">

                                <table class="table table-responsive" <%--border="1" --%>align="center">
                                    <thead>
                                        <tr>
                                            <th class="responsive" colspan="2">TIEMPO DE JUEGO</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td colspan="2">
                                    <center><div class="container">
                                            <input id="start" name="controls" type="radio" />
                                            <input id="stop" name="controls" type="radio" />
                                            <input id="reset" name="controls" type="radio" />
                                            <div class="timer">
                                                <div class="cell">
                                                    <div class="numbers tenhour moveten">0 1 2 3 4 5 6 7 8 9</div>
                                                </div>
                                                <div class="cell">
                                                    <div class="numbers hour moveten">0 1 2 3 4 5 6 7 8 9</div>
                                                </div>
                                                <div class="cell divider"><div class="numbers">:</div></div>
                                                <div class="cell">
                                                    <div class="numbers tenminute movesix">0 1 2 3 4 5 6</div>
                                                </div>
                                                <div class="cell">
                                                    <div class="numbers minute moveten">0 1 2 3 4 5 6 7 8 9</div>
                                                </div>
                                                <div class="cell divider"><div class="numbers">:</div></div>
                                                <div class="cell">
                                                    <div class="numbers tensecond movesix">0 1 2 3 4 5 6</div>
                                                </div>
                                                <div class="cell">
                                                    <div class="numbers second moveten">0 1 2 3 4 5 6 7 8 9</div>
                                                </div>
                                                <div class="cell divider"><div class="numbers">:</div></div>
                                                <div class="cell">
                                                    <div class="numbers milisecond moveten">0 1 2 3 4 5 6 7 8 9</div>
                                                </div>
                                                <div class="cell">
                                                    <div class="numbers tenmilisecond moveten">0 1 2 3 4 5 6 7 8 9</div>
                                                </div>
                                                <div class="cell">
                                                    <div class="numbers hundredmilisecond moveten">0 1 2 3 4 5 6 7 8 9</div>
                                                </div>
                                            </div>
                                            <div id="timer_controls">
                                                <label for="start">Start</label>
                                                <label for="stop">Stop</label>
                                                <label for="reset">Reset</label>
                                            </div>
                                        </div></center>
                                    </td>
                                    </tr>
                                    </tbody>

                                </table>
                            </div>
                            <div class="box-body"  style="background: #E0F8F7" align="center">
                                <div class="col-md-6">
                                    <div class="box-body"  style="background: #81DAF5" align="center">
                                        <h1 id="nroGol" class="cant-e-1">

                                        </h1>

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="box-body"  style="background: #81DAF5" align="center">
                                        <h1 id="nroGol2" class="cant-e-2">

                                        </h1>
                                    </div>
                                </div>

                            </div>
                            <div class="box-body"  style="background: #E0F8F7" align="center">
                                <div class="col-md-6">
                                    <div class="box-body"  style="background: #81DAF5" align="center">
                                        <a  data-toggle="modal" href="#myModal1" class="btn btn-labeled btn-danger">Tarjeta</a>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="box-body"  style="background: #81DAF5" align="center">
                                        <a  data-toggle="modal" href="#myModal2" class="btn btn-labeled btn-danger">Tarjeta</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="box-body"  style="background: #E0F8F7" align="center">
                                <div class="row" align="center">
                                    <label><%out.println(p.Mostrar_nombre(id_eq_2.trim()));%><br><img src="../../Imagen/fc.png" width="150" height="160" alt="fc" align="left"/>
                                    </label><br>
                                    <label><%out.println(p.Mostrar_categoria_juego(id_juego.trim()));%></label>
                                </div>
                                <br>
                                <br>
                                <button type="button" class="btn btn-primary btn-sum-gol" onclick="AgregarGol(2)" >Sumar gol</button>
                            </div>
                        </div>  
                    </div>

                </section>
                <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content" align="center">
                            <div class="smart-form">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                </div>
                                <div class="modal-body no-padding" align="center">
                                    <fieldset>
                                        <section>
                                            <table class="table table-bordered" width="100%">
                                                <thead>
                                                <th>Nombres
                                                </th>
                                                <th>Nro camiseta
                                                </th>
                                                <th>Tarjetas
                                                </th>
                                                </thead>
                                                <tbody class="contenido">

                                                </tbody>
                                            </table>
                                        </section>
                                    </fieldset>
                                    <footer align="center">
                                        <button type="submit" class="btn btn-primary btn-conti">
                                            Continuar
                                        </button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal" >
                                            Cancel
                                        </button>
                                    </footer>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content" align="center">
                            <div class="smart-form">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                </div>
                                <div class="modal-body no-padding">
                                    <fieldset>
                                        <section>
                                            <section>
                                                <table class="table table-bordered" width="100%">
                                                    <thead>
                                                    <th>Nombres
                                                    </th>
                                                    <th>Nro camiseta
                                                    </th>
                                                    <th>Tarjetas
                                                    </th>
                                                    </thead>
                                                    <tbody class="contenido2">

                                                    </tbody>
                                                </table>
                                            </section>
                                    </fieldset>
                                    <footer align="center">
                                        <button type="submit" class="btn btn-primary btn-conti">
                                            Continuar
                                        </button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal" >
                                            Cancel
                                        </button>
                                    </footer>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <select >
                    <label>tarjeta Amarila<input type="radio" name="gr"></label>
                    <label>tarjeta Amarila<input type="radio" name="gr"></label>

                    <!-- <section class="content">
                         <div class="row">
                             <div class="col-md-3">
                                 <div class="box-body" align="center">
                                     <div class="form-group">
                                         <button type="submit" class="btn btn-primary">Sumar gol</button>
                                     </div>
                                 </div>
                             </div>
                             <div class="col-md-6" align="center">
                                 <div class="box-body" >
                                     <div class="form-group"></div>
                                 </div>
                             </div>
                             <div class="col-md-3" align="center">
                                 <div class="box-body" >
                                     <div class="form-group">
                                         <button type="submit" class="btn btn-primary">Sumar gol</button>
                                     </div>
                                 </div>
                             </div>
                         </div>
        
                     </section>-->
                    <!--<table class="table" width="960" height="10" border="2px" border-color="#000">
                        <TR>            
                            <td>fff</td>
                            <td><label>kkk</label></td>
                            <td rowspan="3"><label id="nroGol"  width="80px" height="80px">hghgfh</label></td>
                            <td><label>ggg</label></td>
                            <td><label>ss</label></td>
                            <td rowspan="3"><label>lbl2</label></td>
                            <td><label>kk</label></td>
                            <td><input id="nroGol2" type="text" name="GolEqui2" value="" style="float:right"/></td>            
                        </TR>
                        <TR>
        
                            <TD><input onclick="AgregarGol()"  type="submit" value="GOL" name="gol" size="500" style="width:100px; height:50px" /><input onclick="TarjetaRoja()" id="tarRoja" type="submit" value="0" name="gol" size="500" style="width:40px; height:50px; background-color: red" /></TD>
                            <td><label>kkk</label></td>
                            <td colspan="2"><label>--</label></td>
                            <td><label>ggg</label></td>
                            <TD><input onclick="AgregarGol2()"  type="submit" value="GOL" name="gol" size="500" style="width:100px; height:50px;float:right" />&nbsp;&nbsp;&nbsp;<input onclick="AgregarGol()"  type="submit" value="0" name="gol" size="500" style="width:40px; height:50px; background-color: red;float:right" /></TD>
        
                        </TR>
                        <TR>
        
                            <TD><input onclick=""  type="submit" value="TARJETA" name="##" size="500" style='width:100px; height:50px' /><input onclick=""  type="submit" value="0" name="##" size="500" style='width:40px; height:50px;background-color:yellow' /></TD>
                            <td><label>kkk</label></td>
                            <td><label>ytryt</label></td>
                            <td><label>ggg</label></td>
                            <td><label>kk</label></td>
                            <TD><input onclick=""  type="submit" value="TARJETA" name="##" size="500" style="width:100px; height:50px;float:right" />&nbsp;&nbsp;&nbsp;<input onclick=""  type="submit" value="0" name="##" size="500" style='width:40px; height:50px;background-color: yellow;float:right'/></TD>
                        </TR>
                        <tr>
                        </tr>
                        <tr>
        
                        </tr>
                        <TR>
                            <TD><input onclick="AgregarGol()" align="right" type="submit" value="GOL" name="gol" size="500"/></TD>
                            <td><label>kkk</label></td>
                            <td><label>ytryt</label></td>
                            <td><label>ggg</label></td>
                            <td><label>ytryt</label></td>
                            <td><label>ggg</label></td>
                            <td><label>kk</label></td>
                            <TD><input onclick="AgregarGol2()" type="submit" value="GOL" name="gol" size="500" style="float:right"/></TD>
        
                        </TR>
        
        
                    </table>
        
        
                    <table class="table" width="900" height="10" align="right">-->
            </body>

            <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
            <!-- Bootstrap 3.3.2 JS -->
            <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
            <!-- FastClick -->
            <script src='../../plugins/fastclick/fastclick.min.js'></script>
            <!-- AdminLTE App -->
            <script src="../../dist/js/app.min.js" type="text/javascript"></script>
            <!-- AdminLTE for demo purposes -->
            <script src="../../dist/js/demo.js" type="text/javascript"></script>
            <script>
                                    var meses = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
                                    var diasSemana = new Array("Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado");
                                    var f = new Date();
                                    document.write(diasSemana[f.getDay()] + ", " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
            </script>
            <script>
                var goles = 0;
                $("#nroGol").text(0);
                function AgregarGol(id_equipo) {
                    var b;
                    var a;
                    if (id_equipo === 1) {
                        b = $(".id_e_cat" + id_equipo).val();
                        a = $(".cant-e-" + id_equipo);
                    }
                    if (id_equipo === 2) {
                        b = $(".id_e_cat" + id_equipo).val();
                        a = $(".cant-e-" + id_equipo);
                    }
                    $.post("../../con_part_json", "opc=Agregar_gol&id_cat_equipo=" + b + "&id_juego=" + $(".id_jue").val(), function (objJson) {
                        var lista = objJson.lista;
                        a.text(lista);
                    });
                    Listar_puntos();
                }
                var goles2 = 0;
                $("#nroGol2").val(0);
                function AgregarGol2() {
                    goles2 = goles2 + 1;
                    $("#nroGol2").val(goles2);

                }
                var tarRoja = 0;
                $("#tarRoja").val(0);
                function TarjetaRoja() {
                    tarRoja = tarRoja + 1;
                    $("#tarRoja").val(tarRoja);
                }
            </script>
            <script>
                function Listar_puntos() {
                    var a = $(".cant-e-1");
                    var b = $(".cant-e-2");
                    $.post("../../con_part_json", "opc=Listar_puntos&id_cat_equipo=" + $(".id_e_cat1").val() + "&id_juego=" + $(".id_jue").val(), function (objJson) {
                        var lista = objJson.lista;
                        a.text(lista);
                    });
                    $.post("../../con_part_json", "opc=Listar_puntos&id_cat_equipo=" + $(".id_e_cat2").val() + "&id_juego=" + $(".id_jue").val(), function (objJson) {
                        var lista = objJson.lista;
                        b.text(lista);
                    });
                }
                function Listar_jugadores() {
                    $.post("../../con_part_json", "opc=Listar_Jugadores&id_cat_equipo=" + $(".id_e_cat1").val(), function (objJson) {
                        var lista = objJson.lista;
                        var texto = "";
                        for (var i = 0; i < lista.length; i++) {
                            texto += "<tr>"
                            texto += "<td>" + lista[i].no_per + " " + lista[i].ap_pat + "</td>"
                            texto += "<td>" + lista[i].nu_cam + "</td>"
                            texto += "<td><label>tarjeta Amarila<input type='radio' name='gr" + i + "'></label><label>tarjeta Roja<input type='radio' name='gr" + i + "'></label></td>"
                            texto += "</tr>"
                        }
                        $(".contenido").append(texto);
                    });
                    $.post("../../con_part_json", "opc=Listar_Jugadores&id_cat_equipo=" + $(".id_e_cat2").val(), function (objJson) {
                        var lista = objJson.lista;
                        var texto = "";
                       // if (lista.length > 0)
                            for (var i = 0; i < lista.length; i++) {
                                texto += "<tr>"
                                texto += "<td>" + lista[i].no_per + " " + lista[i].ap_pat + "</td>"
                                texto += "<td>" + lista[i].nu_cam + "</td>"
                                texto += "<td><label>tarjeta Amarila<input type='radio' name='gr" + i + "'></label><label>tarjeta Roja<input type='radio' name='gr" + i + "'></label></td>"
                                texto += "</tr>"
                            }
                        //}else{
                            //texto+="Ningun jugador no puede jugar";
                        //}
                        $(".contenido2").append(texto);
                    });
                }

                $(document).ready(function () {
                    Listar_puntos();
                    Listar_jugadores();
                });
            </script>
        </html>
