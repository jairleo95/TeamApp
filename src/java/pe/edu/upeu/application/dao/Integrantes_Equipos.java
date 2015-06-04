/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import pe.edu.upeu.application.factory.ConexionBD;
import pe.edu.upeu.application.factory.FactoryConnectionDB;
import pe.edu.upeu.application.interfaces.InterfaceEquiposDAO;
import pe.edu.upeu.application.interfaces.InterfaceIntegrantes_Equipos;

/**
 *
 * @author Alex
 */
public class Integrantes_Equipos implements InterfaceIntegrantes_Equipos {

    ConexionBD conn;

    @Override
    public void INSERT_DATOS_Integrantes_equipo(String ID, String Nombnre, String APELLIDO, String CAMISETA, String NUMERO, String CORREO) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
