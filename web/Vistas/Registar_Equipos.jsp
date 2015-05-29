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
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
        <title>JSP Page</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.4 -->
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
        <!-- Theme style -->
        <link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <form align="center">
            <div class="box box-info">

                <h3 class="box-title">Registro de Equipos</h3>
                <div align="center">
                    <label>Ingrese el nombre de Equipo</label>                    
                    <div class="box-header"></div>                
                    <div class="input-group">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <br>
                <div class="form-group">
                    <label>Seleccione la Categoria</label>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" required="">Futboll</label>                    
                        <label>
                            <input type="checkbox">Voleyball</label>                    
                        <label>
                            <input type="checkbox">Basquet</label>
                    </div>
                </div>
                <div align="center">
                    <label>Ingrese el nombre de Equipo</label>                    
                    <div class="box-header"></div>                
                    <div class="input-group">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div align="center">
                    <label>Ingrese el nombre de Equipo</label>                    
                    <div class="box-header"></div>                
                    <div class="input-group">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <div>
                   <div class="input-group">
                        <span class="input-group-addon">@</span>
                        <input type="text" class="form-control" placeholder="Username">
                    </div> 
                </div>
                <div align="center">
                    <label>Ingrese el nombre del Delegado</label>
                    <div class="box-header">
                    </div>                
                    <div class="input-group">
                        <input type="text" class="form-control">
                    </div>
                </div>
                <br>
                <div class="box-body">
                    
                    <br>

                    <h4>With checkbox and radio inputs</h4>
                    <h4>With buttons</h4>
                    <p class="margin">Large: <code>.input-group.input-group-lg</code></p>
                    <div class="input-group input-group-lg">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">Action <span class="fa fa-caret-down"></span></button>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </div><!-- /btn-group -->
                        <input type="text" class="form-control">
                    </div><!-- /input-group -->
                   
                </div><!-- /.box-body -->
            </div>
        </form>
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
            <table class="input">
                <tr>
                    <td>Nombre equipo</td><td>Categorias</td><td>Nombre del Delegado</td><td>Celular</td>
                </tr>
            </table>
        </fieldset>
    </body>
</html>
