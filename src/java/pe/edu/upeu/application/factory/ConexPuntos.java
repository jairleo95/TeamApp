/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upeu.application.factory;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author SAMUEL
 */
public class ConexPuntos {
   private static  Connection conex=null;
   public static  Connection getConex() throws Exception{
   String url="jdbc:mysql://localhost/Futbol";      
   String user="root";
   String pwd="root";
   Class.forName("com.mysql.jdbc.Driver").newInstance();
   conex=DriverManager.getConnection(url, user, pwd);
   return conex;
   }
}

