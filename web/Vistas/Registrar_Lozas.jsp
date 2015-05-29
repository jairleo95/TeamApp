<%-- 
    Document   : RegistrarEquipo
    Created on : 22/05/2015, 10:49:38 AM
    Author     : Alexander
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <fieldset>
            <form ALIGN="center">            
                <div>
                    <br>                
                    <section class="col col-4">
                        <label class="input">
                            <input type="text" name="no_loza" placeholder="Nombre de la Loza" required="" class="nom_c" maxlength="70">
                        </label>
                    </section>
                </div>
                <div>
                    <section class="col col-4">
                        <label class="select">
                            <select name="SelEquipo" required="">
                                <OPTION VALUE="">[Selececcione]</OPTION>                        
                                <OPTION VALUE="1">FUTSAL</OPTION>
                                <OPTION VALUE="2">BASQUET</OPTION>
                                <OPTION VALUE="3">VOLEY</OPTION>
                            </select> 
                        </label>
                    </section>
                </div>
                <br><br>
                <button type="submit" class="btn btn-primary" name="opc">
                    Registrar
                </button>
            </form>
        </fieldset>
    </body>
</html>
