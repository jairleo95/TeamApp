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
    public static Connection getConex() throws Exception {
        String usuario = "brandon256505";
        String password = "Micronics135";
        //String host = "localhost";
        String host = "localhost";
        String puerto = "1521";
        String sid = "orcl";
        //String sid = "";
        /**
         * String usuario = "TeamApp"; String password = "TeamApp"; String host
         * = "localhost"; String puerto = "1521"; String sid = "xe";
         */
        String driver = "oracle.jdbc.driver.OracleDriver";
        String url = "jdbc:oracle:thin:" + usuario + "/" + password + "@" + host + ":" + puerto + ":" + sid;

        Connection connection = null;

        try {
            Class.forName(driver).newInstance();
            connection = DriverManager.getConnection(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
}

