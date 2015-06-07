<%-- 
    Document   : prueba
    Created on : 05-jun-2015, 12:13:58
    Author     : Laptop Sistemas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
    <HEAD> 
<TITLE>Cómo Tallar la Madera</TITLE> 
<STYLE type="text/css"> 
P.mipar {text-align: right} 
</STYLE> 
<BODY> 
<P class="mipar">...Montones de párrafos de texto... 

EJEMPLO DESAPROBADO: 
Para alinear a la derecha una serie de párrafos, los agrupamos con el elemento DIV: 

<DIV align="right"> 
<P>...texto del primer párrafo... 
<P>...texto del segundo párrafo... 
<P>...texto del tercer párrafo... 
</DIV> 

Con CSS, la propiedad text-align se hereda del elemento padre a los hijos, y por tanto podemos decir: 

<HEAD> 
<TITLE>Cómo Tallar la Madera</TITLE> 
<STYLE type="text/css"> 
DIV.parrafos {text-align: right} 
</STYLE> 
<BODY> 
<DIV class="parrafos"> 
<P>...texto del primer párrafo... 
<P>...texto del segundo párrafo... 
<P>...texto del tercer párrafo... 
</DIV> 

Para centrar el documento completo con CSS: 

<HEAD> 
<TITLE>Como Tallar la Madera</TITLE> 
<STYLE type="text/css"> 
BODY {text-align: center} 
</STYLE> 
<BODY> 
...el cuerpo está centrado... 
</BODY> 
<form role="form">
  <div class="form-group">
    <label for="ejemplo_email_1">Email</label>
    <input type="email" class="form-control" id="ejemplo_email_1"
           placeholder="Introduce tu email">
  </div>
  <div class="form-group">
    <label for="ejemplo_password_1">Contraseña</label>
    <input type="password" class="form-control" id="ejemplo_password_1" 
           placeholder="Contraseña">
  </div>
  <div class="form-group">
    <label for="ejemplo_archivo_1">Adjuntar un archivo</label>
    <input type="file" id="ejemplo_archivo_1">
    <p class="help-block">Ejemplo de texto de ayuda.</p>
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox"> Activa esta casilla
    </label>
  </div>
  <button type="submit" class="btn btn-default">Enviar</button>
</form>
</html>
