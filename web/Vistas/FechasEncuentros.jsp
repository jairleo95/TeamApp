<%-- 
    Document   : FechasEncuentros
    Created on : 04/06/2015, 10:54:30 AM
    Author     : SAMUEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <table>
            <tr>
                <td colspan="4" align="center"><h1>Fecha 1</h1></td>
            </tr>
            <tr>
                <td><input type="text" name="golAlemania" size="2"></td>
                <td>Alemania VS Brasil</td>
                <td><input type="text" name="golBrasil" size="2"></td>
            </tr>
            <tr>
                <td><input type="text" name="golArgentina" size="2"></td>
                <td align="center">Argentina VS Peru</td>
                <td><input type="text" name="golPeru" size="2"></td>                
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <input type="submit" value="Enviar"/>
                </td>
            </tr>
        </table><br><br>
        <table>
            <tr>
                <td colspan="3" align="center"><h1>Fecha 2</h1></td>
            </tr>
            <tr>
                <td><input type="text" name="golPeru" size="2"></td>
                <td align="center">Peru VS Brasil</td>
                <td><input type="text" name="golBrasil" size="2"></td>
            </tr>
            <tr>
                <td><input type="text" name="golAlemania" size="2"></td>
                <td>Alemania VS Argentina</td>
                <td><input type="text" name="golArgentina" size="2"></td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <input type="submit" value="Enviar"/>
                </td>
            </tr>
        </table><br><br>
        <table>
            <tr>
                <td colspan="3" align="center"><h1>Fecha 3</h1></td>
            </tr>
            <tr>
                <td><input type="text" name="golArgentina" size="2"></td>
                <td>Argentina VS Brasil</td>
                <td><input type="text" name="golBrasil" size="2"></td>
            </tr>
            <tr>
                <td><input type="text" name="golPeru" size="2"></td>
                <td align="center">Peru VS Alemania</td>
                <td><input type="text" name="golAlemania" size="2"></td>
            </tr>
            <tr>
                <td colspan="4" align="center">
                    <input type="submit" value="Enviar"/>
                </td>
            </tr>
        </table>
    </center>
    </body>
</html>
