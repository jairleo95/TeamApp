/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.edu.upeu.application.dao.Control_PartidoDAO;
import pe.edu.upeu.application.interfaces.InterfaceControl_Partido;

/**
 *
 * @author Laptop Sistemas
 */
@WebServlet(name = "control_partido", urlPatterns = {"/control_partido"})
public class CControl_Partido extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    InterfaceControl_Partido cl = new Control_PartidoDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String opc = request.getParameter("opc");
        if (opc.equals("listar_partido")) {
            getServletContext().setAttribute("Listar_Partido", cl.Listar_Partido());
            response.sendRedirect("Vistas/Partido/Listar_partidos.jsp");
        }
        if (opc.equals("Comenzar_partido")) {
            String id_juego = request.getParameter("id_juego");
            String id_eq_1 = request.getParameter("id_eq_1");
            String id_eq_2 = request.getParameter("id_eq_2");
            out.print(id_eq_1);
            out.print(id_eq_2);
            out.print(id_juego);
            getServletContext().setAttribute("Listar_Partido", cl.Listar_Partido());
            response.sendRedirect("Vistas/Control_Partido/Control_Partido.jsp?id_juego=" + id_juego + "&id_eq_1=" + id_eq_1 + "&id_eq_2=" + id_eq_2);
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
