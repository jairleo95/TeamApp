/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.upeu.application.dao.Integrantes_EquiposDAO;
import pe.edu.upeu.application.interfaces.InterfaceIntegrantes_Equipos;

/**
 *
 * @author Erick Alexander
 */
public class CReporte extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    InterfaceIntegrantes_Equipos ie = new Integrantes_EquiposDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        Map<String, Object> rpta = new HashMap<String, Object>();
        try {
            if (opc.equals("listar_Integrantes")) {
                String id = request.getParameter("");
                String nombre =request.getParameter("nombre");
                String ap_pat =request.getParameter("ape_paterno");
                String ap_mat =request.getParameter("ape_materno");
                String co_est =request.getParameter("co_estudiante");
                String nu_cam =request.getParameter("nu_camiseta");
                String dni =request.getParameter("dni");
                String cell =request.getParameter("cell");
                String email =request.getParameter("email");
                List<Map<String, ?>> lista = ie.Listar_Integrantes(nombre,ap_pat,ap_mat,co_est,nu_cam,dni,cell,email);
                rpta.put("rpta", "1");
                rpta.put("lista", lista);
            }
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
