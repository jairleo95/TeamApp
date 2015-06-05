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
  </script>
  
  <script type="text/javascript">
    
    $(function() {
    
      //la referencia al cronómetro
      var reloj = $("#reloj");
      
      //el callback, por defecto "undefined"
      var micallback = undefined;
      
      //recuadro donde muestro el histórico de parones
      var parones = $("#parones");
      
      //funcion que actualiza y muestra la cuenta actual
      function mostrar_cuenta() {
	  reloj.html ( (+reloj.html() + 0.01).toFixed(2) );
      }
      
      //funcion que devuelve la hora actual (para el registro de parones)
      function hora_actual() {
	var d = new Date();
	var salida = d.getHours() + ":";
	salida += d.getMinutes() + ":";
	salida += d.getSeconds();      
	return salida;
      }


      //iniciamos (o reiniciamos) la cuenta actual
      function iniciar() {
	micallback=setInterval ( mostrar_cuenta , 10 );
      }
      
      //detenemos la cuenta actual y guardamos el parón
      function detener() {
	clearInterval(micallback);
	micallback=undefined;
	parones.html( parones.html() + "<div class='tipohora'>" + hora_actual() + "</div>");
      }
      
      //funcion para arrancar / parar el cronómetro
      function alternar() {
	if ( !micallback ) 
	     iniciar();
	else detener();
      }
      
      //funcion para poner a cero el cronómetro
      function inicializar() {
	if ( !micallback ) {
	     reloj.html( 0.00 );
	     parones.html( "" );
	}
	else 
	     alert ( "Antes tienes que detener el cronómetro" );
      }
      
      
      //inicializamos los eventos
      $("#cambiar").on('click', alternar);
      $("#inicializar").on('click', inicializar);     
      

    });
    
 
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
                    <th2>Barcelona</th2>
                    </td>
                </tr>
            </tbody
        </table>
        <table border="1" align="Center" id="table2">
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
                    <th2>Real Madrid</th2>
                    </td>
                </tr>
            </tbody>
        </table>
        <table border="1" align="center" id="table3">
            <thead>
                <tr>
                    <th colspan="2">TIEMPO DE JUEGO</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="2">
                        <div id="div_crono">
                            <h2>Cronómetro</h2>
                            <h2><span id="reloj"> 0.00 </span> segundos.</h2>
                            
                        </div>
                        <div id="parones"></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div id="div_crono">
                            <button type="button" id="cambiar" class="botonaco">Arrancar/Parar</button>
                            <button type="button" id="inicializar" class="botonaco">Poner a cero</button>
                        </div>
                        <div id="parones"></div>
                    </td>
                </tr>
            </tbody>
        </table>
        <img src="../../Imagen/fc.png" width="170" height="170" alt="fc" align="left"/>
        <img src="../../Imagen/real.png" width="220" height="170" alt="real" align="right"/>
    </body>
</html>
