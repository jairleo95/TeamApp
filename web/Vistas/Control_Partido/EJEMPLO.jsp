<%-- 
    Document   : EJEMPLO
    Created on : 04-jun-2015, 20:01:10
    Author     : Jose
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table>
            <thead>
            <input type="hidden" value="id_juego" class="id_juego">
            <input type="hidden" value="id_quipo1" class="id_e_1">
            <input type="hidden" value="id_quipo2">
            <th><button class="suma_e_1">+</button></th>
            <th><button class="suma_e_2">+</button></th>
        </thead>
        <tbody>

        </tbody>
    </table>
</body>
<script src="../../js/jquery-1.11.1.min.js" type="text/javascript">
    $(document).ready(function (){
       $(".suma_e_1").click(function (){
           var id_equipo1=$(".id_e_1").val();
           var id_juego=$(".id_e_1").val();
           $.post("../../control_partido","opc=sumar_punto&id_cat_equi="+id_equipo1+"&id_juego="+id_juego,function (objJson){
               
           });
       })
           
        
    });
</script>

 <section class="content">
                     <div class="row">
                         <div class="col-md-3">
                             <div class="box-body" align="center">
                                 <div class="form-group">
                                     <button type="submit" class="btn btn-primary">Sumar gol</button>
                                 </div>
                             </div>
                         </div>
                         <div class="col-md-6" align="center">
                             <div class="box-body" >
                                 <div class="form-group"></div>
                             </div>
                         </div>
                         <div class="col-md-3" align="center">
                             <div class="box-body" >
                                 <div class="form-group">
                                     <button type="submit" class="btn btn-primary">Sumar gol</button>
                                 </div>
                             </div>
                         </div>
                     </div>
 
                 </section>
                <table class="table" width="960" height="10" border="2px" border-color="#000">
                    <TR>            
                        <td>fff</td>
                        <td><label>kkk</label></td>
                        <td rowspan="3"><label id="nroGol"  width="80px" height="80px">hghgfh</label></td>
                        <td><label>ggg</label></td>
                        <td><label>ss</label></td>
                        <td rowspan="3"><label>lbl2</label></td>
                        <td><label>kk</label></td>
                        <td><input id="nroGol2" type="text" name="GolEqui2" value="" style="float:right"/></td>            
                    </TR>
                    <TR>

                        <TD><input onclick="AgregarGol()"  type="submit" value="GOL" name="gol" size="500" style="width:100px; height:50px" /><input onclick="TarjetaRoja()" id="tarRoja" type="submit" value="0" name="gol" size="500" style="width:40px; height:50px; background-color: red" /></TD>
                        <td><label>kkk</label></td>
                        <td colspan="2"><label>--</label></td>
                        <td><label>ggg</label></td>
                        <TD><input onclick="AgregarGol2()"  type="submit" value="GOL" name="gol" size="500" style="width:100px; height:50px;float:right" />&nbsp;&nbsp;&nbsp;<input onclick="AgregarGol()"  type="submit" value="0" name="gol" size="500" style="width:40px; height:50px; background-color: red;float:right" /></TD>

                    </TR>
                    <TR>

                        <TD><input onclick=""  type="submit" value="TARJETA" name="##" size="500" style='width:100px; height:50px' /><input onclick=""  type="submit" value="0" name="##" size="500" style='width:40px; height:50px;background-color:yellow' /></TD>
                        <td><label>kkk</label></td>
                        <td><label>ytryt</label></td>
                        <td><label>ggg</label></td>
                        <td><label>kk</label></td>
                        <TD><input onclick=""  type="submit" value="TARJETA" name="##" size="500" style="width:100px; height:50px;float:right" />&nbsp;&nbsp;&nbsp;<input onclick=""  type="submit" value="0" name="##" size="500" style='width:40px; height:50px;background-color: yellow;float:right'/></TD>
                    </TR>
                    <tr>
                    </tr>
                    <tr>

                    </tr>
                    <TR>
                        <TD><input onclick="AgregarGol()" align="right" type="submit" value="GOL" name="gol" size="500"/></TD>
                        <td><label>kkk</label></td>
                        <td><label>ytryt</label></td>
                        <td><label>ggg</label></td>
                        <td><label>ytryt</label></td>
                        <td><label>ggg</label></td>
                        <td><label>kk</label></td>
                        <TD><input onclick="AgregarGol2()" type="submit" value="GOL" name="gol" size="500" style="float:right"/></TD>

                    </TR>


                </table>


                <table class="table" width="900" height="10" align="right">
</html>
