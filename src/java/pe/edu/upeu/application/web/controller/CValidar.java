/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.edu.upeu.application.dao.UsuarioDAO;
import pe.edu.upeu.application.interfaces.InterfaceUsuarioDAO;
import pe.edu.upeu.application.model.V_Usuario;

/**
 *
 * @author ALFA
 */
@WebServlet(name = "validar", urlPatterns = {"/validar"})
public class CValidar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        InterfaceUsuarioDAO u = new UsuarioDAO();
        String Usuario = request.getParameter("email");
        String Clave = request.getParameter("password");

        try {
            if (Usuario.equals("") && Clave.equals("")) {
                out.print("0");

            } else if (u.Validar_Logueo(Usuario, Clave).size() == 1) {
                List<V_Usuario> t_usuario = u.Validar_Logueo(Usuario, Clave);
                V_Usuario user = new V_Usuario();
                user = (V_Usuario) t_usuario.get(0);
                HttpSession sesion = request.getSession(true);
                sesion.setAttribute("ID_USER", user.getId_usuario());
                sesion.setAttribute("NOMBRE", user.getNo_persona());
                sesion.setAttribute("AP_P", user.getAp_paterno());
                sesion.setAttribute("AP_M", user.getAp_materno());
                out.print("1");
            } else {
                out.print("0");
            }

        } catch (Exception e) {
            out.print(e.getMessage());
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
