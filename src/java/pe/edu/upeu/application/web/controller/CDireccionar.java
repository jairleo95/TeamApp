/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jairleo95
 */
@WebServlet(name = "direccionar", urlPatterns = {"/direccionar"})
public class CDireccionar extends HttpServlet {

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
        String opc = request.getParameter("opc");
        try {
            if (opc.equals("Champion_FIA")) {
                response.sendRedirect("Vistas/Partido/Torneo_Cat.jsp?opc=Champion_FIA");
            }
            if (opc.equals("Eliminatorias")) {
                response.sendRedirect("Vistas/Partido/Torneo_Cat.jsp?opc=Eliminatorias");
            }
            if (opc.equals("Series")) {
                response.sendRedirect("Vistas/Partido/Torneo_Cat.jsp?opc=Series");
            }
            if (opc.equals("Programar_Juego")) {
                response.sendRedirect("Vistas/Partido/Torneo_Cat.jsp?opc=Series");
            }
            if (opc.equals("Programar_Futsal")) {
                String id_cat_juego = request.getParameter("id_cat_juego");
                String id_torneo = request.getParameter("id_torneo");
                response.sendRedirect("Vistas/Partido/Programacion_Partido/Programar_Juego.jsp?id_cat_juego=" + id_cat_juego + "&id_torneo=" + id_torneo);
            }
            if (opc.equals("Programar_Basketball")) {
                String id_cat_juego = request.getParameter("id_cat_juego");
                String id_torneo = request.getParameter("id_torneo");
                response.sendRedirect("Vistas/Partido/Programar_Partido_Basquet/Programar_Basquet.jsp?id_cat_juego=" + id_cat_juego + "&id_torneo=" + id_torneo);
            }
            if (opc.equals("Programar_Volleyball")) {
                String id_cat_juego = request.getParameter("id_cat_juego");
                String id_torneo = request.getParameter("id_torneo");
                response.sendRedirect("Vistas/Partido/Programacion_Voley/Programar_Voley.jsp?id_cat_juego=" + id_cat_juego + "&id_torneo=" + id_torneo);
            }
            if (opc.equals("Principal")) {
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Principal.jsp");
                dispatcher.forward(request, response);
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
