<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Portal Secretaria</title>
        <!-- BOOTSTRAP STYLES-->
        <link href="../css/bootstrap.css" rel="stylesheet" />
        <!-- FONTAWESOME STYLES-->
        <link href="../css/font-awesome.css" rel="stylesheet" />
        <!-- MORRIS CHART STYLES-->
        <link href="../js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
        <link href="../css/custom.css" rel="stylesheet" />
        <!-- GOOGLE FONTS-->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <!--tabla ingreso validacion secretaria -->
        <link rel="stylesheet" type="text/css" href="../css/estilos.css">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <!-- descargadoo ya ! error <script type="text/javascript" src="js/jquery.min.js"></script>-->
        <script type="text/javascript" src="../js/manipulacion.js"></script>
        <script type="text/javascript" src="../js/efec.js" ></script>
        <!--fin tabla -->

    </head>
    <body>

        <div id="wrapper">

            <!-- /. NAV TOP  -->
            <!-- /. NAV SIDE  -->
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-md-12">

                        <!--ingrese datos tabla-->  
                       
                        <center>

                            <form action="" method="post" name="formulario" id="formulario">
                                <strong> Escuela </strong>
                                <select class="input-lg btn btn-default">
                                    <option value="" disabled="disabled" selected="selected">SELECCIONE ESCUELA</option>
                                    <option value="1">INGENIERIA SISTEMAS</option>
                                    <option value="2">INGENIERIA ALIMENTOS</option>
                                    <option value="3">INGENIERIA AMBIENTAL</option>
                                    <option value="4">INGENIERIA CIVIL</option>
                                    <option value="5">ARQUITECTURA</option>
                                </select>

                                <p><strong >Codigo </strong>
                                    <input class="text-box"name="Codigo" type="text" id="codigo" size="20" maxlength="50" />
                                    <strong>Plan</strong>
                                    <input class="text-box"name="plan" type="text" id="plan" size="5" maxlength="50" />
                                    <strong>Plan Nuevo</strong>
                                    <input class="text-box" name="plannuevo" type="text" id="plannuevo" size="5" maxlength="50" />
                                </p>
                                <p><strong>Nombres:</strong>
                                    <input  class="text-box"name="descripcion" id="nombre" size="20" maxlength="50">
                                    <strong>Apellidos:</strong>
                                    <input  class="text-box"name="apellidos" id="apellidos" size="30" maxlength="50"/>
                                </p>
                            </form><br/>
                            <!--INGRESO DE TRABLA JQUERY -->

                            <table border='1'>
                                <div id="divContenedor" >

                                    <div id="divContenedorTabla" >
                                        <table align="center" width="800" class="table-responsive">
                                            <caption>Plan academico </caption>
                                            
                                                
                                            </tfoot>
                                        </table>
                                    </div>
                                </div>

                            </table>

                            <p>
                            <center>
                                <div>
                                    <input type="button" class="btn btn-success"name="ingresar" id="enviar" value="ingresar" />
                                    <input type="button" class="btn btn-danger"name="cancelar" id="cancelar" value="Cancelar" />
                                    <!--<a href="#" onClick="return false" onmouseOver="alert('')">
                                    <img src="../img/interrogacion.png" width="45" height="45">
                                </a>-->
                                    <br />
                                </div>
                            </center>
                            </p>
                        </center>


                    </div>
                </div>
            </div>
            <!-- /. PAGE WRAPPER  -->
        </div>
        <!-- /. WRAPPER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
        <script src="../js/jquery-1.10.2.js"></script>
        <!-- BOOTSTRAP SCRIPTS -->
        <script src="../js/bootstrap.min.js"></script>
        <!-- METISMENU SCRIPTS -->
        <script src="../js/jquery.metisMenu.js"></script>
        <!-- MORRIS CHART SCRIPTS -->
        <script src="../js/morris/raphael-2.1.0.min.js"></script>
        <script src="../js/morris/morris.js"></script>
        <!-- CUSTOM SCRIPTS -->
        <script src="../js/custom.js"></script>


    </body>
    <html>
<head>
<title>Contador</title>
</head>
<body>
<script language="JavaScript">
var contador=0;
function incrementar() {
if(contador==3)
alert('Maximo permitido alcanzado: 3');
else {
contador++;
alert('El contador ahora vale :' + contador);}
}
function decrementar() {
if(contador==0)
alert('Minimo permitido alcanzado: 0');
else {
contador--;
alert('El contador ahora vale :' + contador);}
}
</script>
<form>
<input type="button" onClick="incrementar()" value="aumentar"> 
<input type="button" onClick="decrementar()" value="disminuir"> 
<label>
<input name="textarea" type="text" value=aqui debe ir el valor>
</label>
</form>
</html>