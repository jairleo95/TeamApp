<%-- 
    Document   : RegistrarEquipo
    Created on : 22/05/2015, 10:49:38 AM
    Author     : Alexander
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registro de Lozas</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.4 -->
        <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Ionicons -->
        <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css">
        <!-- daterange picker -->
        <link href="../../plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css">
        <!-- iCheck for checkboxes and radio inputs -->
        <link href="../plugins/iCheck/all.css" rel="stylesheet" type="text/css">
        <!-- Bootstrap Color Picker -->
        <link href="../plugins/colorpicker/bootstrap-colorpicker.min.css" rel="stylesheet">
        <!-- Bootstrap time Picker -->
        <link href="../plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
        <!-- Theme style -->
        <link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css">
        <!-- Theme style -->
        <link href="../plugins/iCheck/all.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body> 
        <form>
            <div class="box box-warning" align="center">
                <div class="box-header">
                    <h3 class="box-title">Registro de Lozas Deportivas</h3>
                </div>
                <label>Ingrese el nombre de Loza</label>
                <input type="text" class="form-control" placeholder="Nombre de loza" style="width: 250px;">
                <label>Ingrese el tipo de Loza</label>
                <select class="form-control"style="width: 250px;">
                    <OPTION VALUE="">[Selececcione]</OPTION>                        
                    <OPTION VALUE="1">FUTSAL</OPTION>
                    <OPTION VALUE="2">BASQUET</OPTION>
                    <OPTION VALUE="3">VOLEY</OPTION>
                </select>
            </div>
        </form>
        <div class="box">
            <div class="box-header">
                <h3 class="box-title">Tadas la lozas registradas</h3>
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
                                        <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 111px;">Rendering engine</th>
                                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 140px;">Browser</th>
                                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 122px;">Platform(s)</th>
                                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 94px;">Engine version</th>
                                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 65px;">CSS grade</th></tr>
                                </thead>
                                <tbody>
                                    <tr role="row" class="odd">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Netscape Navigator 9</td>
                                        <td>Win 98+ / OSX.2+</td>
                                        <td>1.8</td>
                                        <td>A</td>
                                    </tr>
                                    <tr role="row" class="even">
                                        <td class="sorting_1">Gecko</td>
                                        <td>Mozilla 1.0</td>
                                        <td>Win 95+ / OSX.1+</td>
                                        <td>1</td>
                                        <td>A</td>
                                    </tr></tbody>
                                <tfoot>
                                    <tr>
                                        <th rowspan="1" colspan="1">Rendering engine</th>
                                        <th rowspan="1" colspan="1">Browser</th>
                                        <th rowspan="1" colspan="1">Platform(s)</th>
                                        <th rowspan="1" colspan="1">Engine version</th>
                                        <th rowspan="1" colspan="1">CSS grade</th></tr>
                                </tfoot>
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
