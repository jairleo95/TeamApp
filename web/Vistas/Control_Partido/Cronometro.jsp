<%-- 
    Document   : Cronometro
    Created on : 07/06/2015, 05:36:34 PM
    Author     : alum.fial7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="../../css/css.css">
        <script type="text/javascript" src="../../js/cronometro.js">
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    
         </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div id="cronometro">
            <div id="reloj">
                0 00 00 00
            </div>
            <form name="cron" action="#">
                <input type="button" value="Empezar" name="boton1"   />
                <input type="button" value="Parar" name="boton2"  /><br/>
            </form>
</div>
    </body>
</html>
