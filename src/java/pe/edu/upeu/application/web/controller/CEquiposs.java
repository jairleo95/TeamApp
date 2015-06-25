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
import pe.edu.upeu.application.dao.Cat_EquipoDAO;
import pe.edu.upeu.application.dao.Categoria_JuegoDAO;
import pe.edu.upeu.application.dao.EquipoDAO;
import pe.edu.upeu.application.interfaces.InterfaceCat_EquipoDAO;
import pe.edu.upeu.application.interfaces.InterfaceCategoria_Juego;
import pe.edu.upeu.application.interfaces.InterfaceEquipo;
import pe.edu.upeu.application.model.V_Categoria_Juego;

/**
 *
 * @author MILTON
 */
public class CEquiposs extends HttpServlet {

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
        InterfaceEquipo cj = new EquipoDAO();
        InterfaceCat_EquipoDAO cae = new Cat_EquipoDAO();
        InterfaceCategoria_Juego j = new Categoria_JuegoDAO();

        if (opc.equals("Ingresar_registro")) {
            String id_torneo = request.getParameter("id_torneo");
            String es_equipo = request.getParameter("es_equipo");
            String logo_equipo = null;
            getServletContext().setAttribute("Listar_catgeria_juego", j.Listar_catgeria_juego(id_torneo));
            response.sendRedirect("Vistas/Registro/Registar_Equipos.jsp?id_torneo=" + id_torneo);
        }
        if (opc.equals("Insertar_Equipo")) {
            String nombre_equipo = request.getParameter("nombre_t");
            String id_torneo = request.getParameter("id_torneo");
            String es_equipo = "1";
            String logo_equipo = null;
            String id_equi = cj.INSERT_EQUIPO(null, nombre_equipo, id_torneo, es_equipo, logo_equipo);
            String check2[] = request.getParameterValues("cat_juego");
            for (int i = 0; i < check2.length; i++) {
                String q = check2[i];
                cae.Insertar_Cat_equipo(id_equi, q);
                //out.print(check2[i]);
            }
            //out.print(id_equi);
            //getServletContext().setAttribute(id_equi);
            getServletContext().setAttribute("Listar_catgeria_juego", j.Listar_catgeria_juego(id_torneo));
            
            response.sendRedirect("Vistas/Registro/Registrar_integrantes_Equipos.jsp");
            
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
