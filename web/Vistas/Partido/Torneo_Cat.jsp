<%-- 
    Document   : Torneo_Cat
    Created on : 11/06/2015, 11:57:09 PM
    Author     : Alex
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Programar Torneo</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.4 -->
        <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link href="../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="skin-blue sidebar-mini">
        <!-- Left side column. contains the logo and sidebar -->
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper" style="margin-left:0px;">

            <!-- Main content -->
            <section class="content">
                <div class="col-lg-12">
                    <div class="form-group col-lg-4">
                        <h3>Seleccione Torneo:</h3>
                        <select class="form-control selec_torneo">
                        </select>
                    </div>
                </div>

                <!-- =========================================================== -->

                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-aqua">
                            <div class="inner">
                                <h3>Futsal</h3>
                                <p >Futsal</p> 

                            </div>
                            <div class="icon">
                                <i class="fa fa-soccer-ball-o"></i>
                            </div>
                            <a href="../../direccionar?opc=Programar_Futsal" class="small-box-footer">
                                Ingresar  <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div><!-- ./col -->
                    <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-green">
                            <div class="inner">
                                <h3>Bolleyball</h3>
                                <p>Bolleyball</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-life-saver "></i>
                            </div>
                            <a href="#" class="small-box-footer">
                                Ingresar <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div><!-- ./col -->
                    <div class="col-lg-4 col-xs-6">
                        <!-- small box -->
                        <div class="small-box bg-yellow">
                            <div class="inner">
                                <h3>Basqueball</h3>
                                <p>Basqueball</p>
                            </div>
                            <div class="icon">
                                <i class="fa fa-trophy"></i>
                            </div>
                            <a href="#" class="small-box-footer">
                                Ingresar <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                    </div><!-- ./col -->

                </div><!-- /.row -->



            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
        <div class='control-sidebar-bg'></div>

        <!-- jQuery 2.1.4 -->
        <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Slimscroll -->
        <script src="../../plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src='../../plugins/fastclick/fastclick.min.js'></script>
        <!-- AdminLTE App -->
        <script src="../../dist/js/app.min.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../../dist/js/demo.js" type="text/javascript"></script>
        <script src="../../js/Js_Form.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                list_select($(".selec_torneo"), "../../torneo", "opc=Ver_Torneo");
            });
        </script>
    </body>
</html>
