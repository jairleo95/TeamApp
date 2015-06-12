<%-- 
    Document   : RegistarEquipos
    Created on : 22/05/2015, 10:36:09 AM
    Author     : Milton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">        
        <link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
        <title>JSP Page</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.4 -->
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
        <!-- Theme style -->
        <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css">
    </head>    
    <body>
        <div class="container">
            <div class="register-logo">
                <a href="../../Principal.jsp"><b>TEAM</b>App</a>
            </div>
            <div class="page-header">
                <h1>Registro de Equipo</h1>
            </div>
            <form align="center" class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-xs-3">Nombres:</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control" name="nombre" placeholder="Nombres">
                    </div>
                </div>
                <div class="form-group">
                    <label>Seleccione la Categoria</label>
                    <div class="checkbox" name="cbCategoria">
                        <label>
                            <input type="checkbox" name="var1" value=Futsal>Futsal</label>                    
                        <label>
                            <input type="checkbox" name="var1" value="Voleyball">Voleyboll</label>                    
                        <label>
                            <input type="checkbox" name="var1" value="Basquetball">Basquetball</label>
                    </div>
                </div>
                <h3 class="box-title"></h3>
                <div align="center">
                    <label>Ingrese los nombres</label>                    
                    <div class="box-header"> </div>                
                    <div class="input-group">
                        <input type="text" name="DelegadoNom" class="form-control">
                    </div>
                </div>
                <div align="center">
                    <label>Ingrese los apellidos</label>                    
                    <div class="box-header"></div>                
                    <div class="input-group">
                        <input type="text" name="DelegadoApell" class="form-control">
                    </div>
                </div>
                <div align="center">
                    <label>Ingrese el numero de celular</label>
                    <div class="box-header">
                    </div>                
                    <div class="input-group">
                        <input type="text" name="DelegadoCel" class="form-control">
                    </div>
                </div>
                <div align="center">
                    <label>Ingrese el numero de DNI</label>
                    <div class="box-header">
                    </div>                
                    <div class="input-group">
                        <input type="text" name="DelegadoDni" class="form-control">
                    </div>
                </div>
                <div align="center">
                    <label>Ingrese su correo electronico</label>
                    <div class="box-header">
                    </div>                
                    <div class="input-group">
                        <input type="text" name="DelegadoEmail" class="form-control">
                    </div>
                </div>
                <br>
                <button type="submit" class="btn btn-primary" name="opc">Registrar</button>  
            </form>
        </div>
    </body>
    <script>        
            
    </script>
</html>
