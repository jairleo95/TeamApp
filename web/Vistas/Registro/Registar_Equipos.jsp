<%-- 
    Document   : RegistarEquipos
    Created on : 22/05/2015, 10:36:09 AM
    Author     : Milton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String tmbNomEquipo = request.getParameter("txtNomEquipo");
            String tmbCategoria = request.getParameter("cbCategoria");
            String tmbVar1 = request.getParameter("var1");
            String tmbDelegadoNom = request.getParameter("DelegadoNom");
            String tmbDelegadoApell = request.getParameter("DelegadoApell");
            String tmbDelegadoCel = request.getParameter("DelegadoCel");
            String tmbDelegadoDni = request.getParameter("DelegadoDni");
            String tmbDelegadoEmail = request.getParameter("DelegadoEmail");
        %>
        
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
                        <input type="text" name="txtNomEquipo" class="form-control">
                    </div>
                </div>
                <br>
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
                <h3 class="box-title">Registro del delegado</h3>
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
              <div class="box">
                  
                  
            <div class="box-header">
                <h3 class="box-title">Todos los equipos y delegados registrados</h3>
            </div><!-- /.box-header -->
            <div class="box-body">

                <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="dataTables_length" id="example1_length">
                                <label>Show 
                                    <select name="example1_length" aria-controls="example1" class="form-control input-sm">
                                        <option value="10">10</option>
                                        <option value="25">25</option>
                                        <option value="50">50</option>
                                        <option value="100">100</option>
                                    </select> entries
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div id="example1_filter" class="dataTables_filter">
                                <label>Search:
                                    <input type="search" class="form-control input-sm" placeholder="" aria-controls="example1">
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row"><div class="col-sm-12">
                            <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                <thead>
                                    <tr role="row">
                                        <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 20px;">Numero</th>
                                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 140px;">NOMBRE DE EQUIPO</th>
                                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 140px;">CATEGORIA</th>                                        
                                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 122px;">NOMBRE DE REPRESENTANTE</th>
                                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 140px;">APELLIDOS</th>
                                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 140px;">CELULAR</th>
                                </thead>
                                <tbody>
                                    <tr role="row" class="even">
                                        <td class="sorting_1">1</td>
                                        <td><%= tmbNomEquipo%></td>
                                        <td><%= tmbVar1%></td>
                                        <td><%= tmbDelegadoNom%></td>
                                        <td><%= tmbDelegadoApell%></td>
                                        <td><%= tmbDelegadoCel%></td>
                                        <td></td>
                                    </tr>  
                                    <tr role="row" class="even">
                                        <td class="sorting_2">2</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr> 
                                    <tr role="row" class="even">
                                        <td class="sorting_3">3</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div></div>
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>

                        </div><div class="col-sm-7">
                            <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                                <ul class="pagination">
                                    <li class="paginate_button previous disabled" id="example1_previous">
                                        <a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a>
                                    </li>
                                    <li class="paginate_button active">
                                        <a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a>
                                    </li>
                                    <li class="paginate_button ">
                                        <a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a>
                                    </li><li class="paginate_button ">
                                        <a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li>
                                    <li class="paginate_button ">
                                        <a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a>
                                    </li>
                                    <li class="paginate_button ">
                                        <a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a>
                                    </li><li class="paginate_button ">
                                        <a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li>
                                    <li class="paginate_button next" id="example1_next">
                                        <a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- /.box-body -->
        </div>
    </body>
</html>
