/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.upeu.application.web.controller;

import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import pe.edu.upeu.application.dao.Control_PartidoDAO;
import pe.edu.upeu.application.interfaces.InterfaceControl_Partido;

/**
 *
 * @author Laptop Sistemas
 */
@WebServlet(name = "con_part_json", urlPatterns = {"/con_part_json"})
public class CControl_Partido_json extends HttpServlet {

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
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        HttpSession sesion = request.getSession(true);
        String id_user = (String) sesion.getAttribute("ID_USER");
        PrintWriter out = response.getWriter();
        Map<String, Object> rpta = new HashMap<String, Object>();
        String opc = request.getParameter("opc");
        try {
            if (opc.equals("Listar_puntos")) {
                String id_equipo = request.getParameter("id_cat_equipo");
                String id_juego = request.getParameter("id_juego");
                String cant = cl.listar_goles(id_juego, id_equipo);
                //List<Map<String, ?>> list = cc.List_centro_costo(iddep);
                rpta.put("rpta", "1");
                rpta.put("lista", cant);
            }
            if (opc.equals("Agregar_gol")) {
                String id_equipo = request.getParameter("id_cat_equipo");
                String id_juego = request.getParameter("id_juego");
                cl.Agregar_gol(id_equipo, id_juego, "1", id_user);
                //String cant = cl.listar_goles(id_juego, id_equipo);
                //List<Map<String, ?>> list = cc.List_centro_costo(iddep);
            }
            if (opc.equals("Listar_Jugadores")) {
                String id_equipo = request.getParameter("id_cat_equipo");
                List<Map<String, ?>> lista = cl.Listar_Jugadores(id_equipo);
                rpta.put("rpta", "1");
                rpta.put("lista", lista);
            }
        } catch (Exception e) {
            rpta.put("rpta", "-1");
            rpta.put("mensaje", e.getMessage());
        }
        Gson gson = new Gson();
        out.println(gson.toJson(rpta));
        out.flush();
        out.close();
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
