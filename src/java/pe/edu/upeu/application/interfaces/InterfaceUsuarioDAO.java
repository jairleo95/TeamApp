/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.interfaces;

import java.util.List;
import pe.edu.upeu.application.model.V_Usuario;

/**
 *
 * @author ALFA
 */
public interface InterfaceUsuarioDAO {

    public List<V_Usuario> Validar_Logueo(String usuario, String clave);
}
