<%-- 
    Document   : Control_Partido
    Created on : 05-jun-2015, 4:48:43
    Author     : YW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control de Partidos</title>
        <link href="https://fonts.googleapis.com/css?family=Titillium+Web:200,300,400,600,700|Open+Sans:700,400,300" type="text/css" rel="stylesheet" ></link>
        <link rel="stylesheet" type="text/css" href="../../css/estilos.css">
        <script type="text/javascript" src="../../js/zepto.min.js">
            < link href = "../bootstrap/css/bootstrap.min.css" rel = "stylesheet" type = "text/css" / >
                    < link href = "https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel = "stylesheet" type = "text/css" / ></script>
        <script src="http://hostredeando.ucoz.es/js/prefixfree.js" type="text/javascript"></script>
        <script>
            var meses = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
            var diasSemana = new Array("Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado");
            var f = new Date();
            document.write(diasSemana[f.getDay()] + ", " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
        </script>
        <script>
             var goles=0;
              $("#nroGol").val(0);
            function AgregarGol() { 
                goles=goles+1;
                $("#nroGol").val(goles);

            }
        </script>

        <style>

            #table1{
                width: 25%;
                height: 14em;
                float:left;            }
            #table2{
                width: 25%;
                height: 14em;
                float: right;
            }
            #table3{
                width: 40%;
                height: 14em;
            }

        </style>

        <style>
            .container {
                padding: 20px;width: 400px;
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
        <body>

            <table border="1" align="Center" id="table1">
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
    </tbody
</table>
<table class="table-responsive" border="1" align="Center" id="table2">
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
<table class="table table-responsive" <%--border="1" --%>align="center" id="table3">
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
    <table class="table " width="900" height="10">
        <TR>
            <td><input id="nroGol" type="text" name="GolEqui1" value="" /></td>
        </TR>
        <TR>
            <TD><input onclick="AgregarGol()"  type="submit" value="GOL" name="gol" size="500"style='width:100px; height:50px' /></TD>
        </TR>
        <TR>
            <TD><input onclick=""  type="submit" value="TARJETA" name="##" size="500"style='width:100px; height:50px' /></TD>    </TR>
        <tr>
        <img src="../../Imagen/fc.png" width="170" height="170" alt="fc" align="left"/>
    </tr>
    <tr>
        <img src="../../Imagen/real.png" width="220" height="170" alt="real" align="right"/>
    </tr>
    <TR>
        <TD><input onclick="AgregarGol()" align="right" type="submit" value="GOL" name="gol" size="500"/></TD>
    </TR>
    
    
        </table>
<table class="table " width="900" height="10" align="right">
    <%--<TR>
        <td><input type="text" align="right" name="GolEqui2" value="" /></td>
    </TR>
    <TR>
        <TD><input onclick="AgregarGol()" align="right" type="submit" value="GOL" name="gol" size="500"style='width:100px; height:50px' /></TD>
</TR>--%>
    <%--<tr>
        <img src="../../Imagen/real.png" width="220" height="170" alt="real" align="right"/>
</tr>--%>
</table>
<%--<center>
    <div class="table-responsive" style="border: 1pt solid #fbb; text-align:center;">
        <table class="table " width="900" height="10">
            <TR>
                <td><input type="text" name="GolEqui1" value="" /></td>
            </TR>
            <TR>
                <td><input type="text" name="GolEqui2" value="" /></td>
            </TR>
        </table>
    </div>
</center>--%>
<%--<center >
        <div class="table-responsive" style="border: 1pt solid #fbb; text-align:center;">
        <table class="table " width="900" height="10">
            <TR> 
                <TD><input type="button" class="btn-danger"value="WIN" name="WIN" size="500" /> </TD> <TD><input type="submit" value="LOSE" name="goles" size="500"style='width:100px; height:50px' /> </TD>
                </TR> <TR>
                    <TD><input onclick="AgregarGol()"  type="submit" value="GOL" name="gol" size="500"style='width:100px; height:50px' /></TD> <TD><input type="submit" value="GOL" name="gol" size="500"style='width:100px; height:50px' /></TD> 
                </TR>
            </table>
        </div>
</center>--%>
    <%-- <table style="border: 1pt solid #fbb; ">
        <tbody >
            <!-- Aplicadas en las filas -->
            <tr class="active">.444444..</tr>
            <tr class="success">..444444.</tr>
            <tr class="warning">..4444444.</tr>
            <tr class="danger">.44..</tr>

        <!-- Aplicadas en las celdas (<td> o <th>) -->
        <tr>
            <td class="active">.4444444444..</td>
            <td class="success">.44444444..</td>
            <td class="warning">4444444444444444444444444444444444444...</td>
            <td class="danger">...</td>
        </tr>
    </tbody>
</table>--%>

</body>
</html>
