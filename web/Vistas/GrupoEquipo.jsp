<%-- 
    Document   : GrupoEquipo
    Created on : 04/06/2015, 10:06:45 AM
    Author     : SAMUEL
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
           <table border="1">
                <tr>
                    <td>GRUPOA</td>
                </tr>
                <% int tope=4;
                   List <String> clubes=new ArrayList<String>();
                   clubes.add("Alemania");
                   clubes.add("Argentina");
                   clubes.add("Peru");
                   clubes.add("Brasil");
                             
                   for(int i=0;i<clubes.size();i++){
                   String option=(String)clubes.get(i);
                 %>    
                <tr>
                    <td><%=option%></td>
                </tr>
                <%}%>
           </table><br><br>
                <%
                  int auxT=clubes.size();
                  boolean impar=(auxT%2!=0);
                  if(impar){
                  ++auxT;
                  }
                  int totalP=(auxT*(auxT-1))/2;//total de partidos de una ronda
                  String [] local=new String [totalP];
                  String [] visita=new String [totalP];
                  int modIF=(auxT/2);//para hacer mod cada inicio de fecha
                  int indiceInverso=auxT-2;
                  for(int i=0;i<totalP;i++){
                    if (i%modIF==0){//seria el partido inicial de cada fecha
                    //si es impar el numero de clubes la primera fecha se borra poniendo null
                        if (impar){
                        local[i]=null;
                        visita[i]=null;
                        }
                   else{
                    //se pone uno local otro  visita al ultimo equipo
                        if(i%2==0){
                        local[i]=clubes.get(i%(auxT-1));
                        visita[i]=clubes.get(auxT-1);
                        }
                   else{
                        local[i]=clubes.get(auxT-1);
                        visita[i]=clubes.get(i%(auxT-1));
                       }
                       }
                    }
            else{
                local[i]=clubes.get(i%(auxT-1));
                visita[i]=clubes.get(indiceInverso);           
                --indiceInverso;
            if (indiceInverso<0){
            indiceInverso=auxT-2;
         }
      }
   }%>
   
                
                <table>
                    <tr>
                        <td colspan="3" align="center"><h1><b>ENCUENTROS</b></h1></td>
                    </tr>
                    <%for(int i=0;i<totalP;i++){%>
                    <tr>
                        <td><input type="text" name="gollocal>" size="3"/></td>
                        <td align="center">
                        <%if(local[i]!=null){
                        out.println(local[i]+" vs "+visita[i]+"\n");}%>
                        </td>
                        <td><input type="text" name="golvisita" size="3"/></td>
                   </tr>
                   <%}%>
                </table>                
    </center>
    </body>
</html>

