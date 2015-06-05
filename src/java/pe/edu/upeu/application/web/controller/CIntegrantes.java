/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
public class CIntegrantes extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    InterfaceIntegrantes_Equipos iie = new Integrantes_EquiposDAO();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        try {
            /* TODO output your page here. You may use following sample code. */
            if (opc.equals("Registrar_Integrantes")) {
               String nombre = request.getParameter("nombre");
               String ap_pater = request.getParameter("ape_apterno");
               String ap_mater = request.getParameter("ape_materno");
               String co_est = request.getParameter("co_estudiante");
               String cel = request.getParameter("cell");
               String nu_cam = request.getParameter("nu_camiseta");
               String dni = request.getParameter("dni");
               String correo = request.getParameter("email");
               
               iie.INSERT_DATOS_Integrantes_equipo(null , nombre, ap_pater, ap_mater, co_est,cel, dni,correo);
               String id_per = iie.ID_MAX_PER();
               String id_cte = "CTE-00000000000001";
               iie.INSER_DET_CAT(null,id_cte,id_per,nu_cam);
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
