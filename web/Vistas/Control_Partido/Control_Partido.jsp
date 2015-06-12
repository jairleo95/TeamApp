<%-- 
    Document   : Control_Partido
    Created on : 05-jun-2015, 4:48:43
    Author     : YW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html >

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
                <section class="content">
                    <input type="hidden" value="<%=request.getParameter("id_juego")%>">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="box-body"  style="background: #E0F8F7" align="center">
                                <div class="row" align="center">
                                    <label>sasasa<br><img src="../../Imagen/real.png" width="220" height="170" alt="real" align="right"/></label>
                                </div>
                                <table border="1" align="Center" class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th colspan="2">EQUIPO1</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Categoria de Equipo</td>
                                            <td>Nombre Equipo</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div id="wins">
                                                    <th1>Futsal</th1>
                                                </div>
                                            </td>
                                            <td>
                                    <th2>Ing Ambiental</th2>
                                    </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <br>
                                <br>
                                <button type="button" class="btn btn-primary" onclick="AgregarGol()">Sumar gol</button>
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
                                        <h1 id="nroGol">
                                            0
                                        </h1>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="box-body"  style="background: #81DAF5" align="center">
                                        <h1 id="nroGol2">
                                           0
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="box-body"  style="background: #E0F8F7" align="center">
                                <div class="row" align="center">
                                    <label>sasasa<br><img src="../../Imagen/fc.png" width="150" height="160" alt="fc" align="left"/>
                                    </label>
                                </div>
                                <table class="table table-hover table-responsive" border="1" align="Center" width="100%">
                                    <thead>
                                        <tr>
                                            <th colspan="2">EQUIPO2</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Categoria de Equipo</td>
                                            <td>Nombre Equipo</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div id="wins">
                                                    <th1>Futsal</th1>
                                                </div>
                                            </td>
                                            <td>
                                    <th2>Ing Sistemas</th2>
                                    </td>
                                    </tr>
                                    </tbody>
                                </table>
                                <br>
                                <br>
                                <button type="button" class="btn btn-primary btn-sum-gol" onclick="AgregarGol()" >Sumar gol</button>
                            </div>
                        </div>  
                    </div>

                </section>
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


                function AgregarGol() {
                    goles = goles + 1;
                    $("#nroGol").text(goles);
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
        </html>
