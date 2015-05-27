<%-- 
    Document   : RegistarEquipos
    Created on : 22/05/2015, 10:36:09 AM
    Author     : Alexander
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 ALIGN="center">Registro de Equipos</h1>
        <fieldset>
            <form ALIGN="center">            
                <div>                
                    <section class="">
                        <label class="input">
                            <label>Nombre del Equipo</label><br>
                            <input type="text" name="" placeholder="Nombre del equipo" required="" class="nom_c" maxlength="70">
                        </label>
                    </section>
                </div>
                <div>                    
                    <label>Seleccione las Categorias de Juego</label>
                    <div>
                        <input type="checkbox" name="sex" value="male" checked>Futsal<br>
                        <input type="checkbox" name="sex" value="female">Voley<br>
                        <input type="checkbox" name="sex" value="female">Basquet
                    </div>
                </div>
                <div>
                    <section class="">
                        <label class="input">
                            <label>Nombre del Delegado</label><br>
                            <input type="text" name="" placeholder="Nombre del Delegado" required="" class="" maxlength="70">
                        </label>
                    </section>
                </div>
                <div>
                    <section class="">
                        <label class="input">
                            <label>Apellidos</label><br>
                            <input type="text" name="" placeholder="Apellido del Delegado" required="" class="" maxlength="70">
                        </label>
                    </section>
                </div>
                <div>
                    <section class="">
                        <label class="input">
                            <label>Dni</label><br>
                            <input type="number" name="" placeholder="DNI" required="" class="" maxlength="70">
                        </label>
                    </section>
                </div> <div>
                    <section class="">
                        <label class="input">
                            <label>Celular</label><br>
                            <input type="number" name="" placeholder="Nº Celular" required="" class="" maxlength="70">
                        </label>
                    </section>
                </div>
                <div>
                    <section class="">
                        <label class="input">
                            <label>Correo Electronico</label><br>
                            <input type="email" name="" placeholder="user@ejemplo.com"  pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" required="" class="" maxlength="70">
                        </label>
                    </section>
                </div>
                <br><br>
                <button type="submit" class="btn btn-primary" name="opc">Registrar</button>
            </form>
        </fieldset>
        <fieldset>
        <table>
            <tr>
                <td>Nombre equipo</td><td>Categorias</td><td>Nombre del Delegado</td><td>Celular</td>
            </tr>
        </table>
        </fieldset>
    </body>
</html>
