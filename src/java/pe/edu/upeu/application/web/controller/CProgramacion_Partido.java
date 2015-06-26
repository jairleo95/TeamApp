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
import pe.edu.upeu.application.dao.ProgramacionPartidoDAO;
import pe.edu.upeu.application.interfaces.InterfaceProrgamacionPartidoDAO;

/**
 *
 * @author Jairleo95
 */
@WebServlet(name = "programacion_partido", urlPatterns = {"/programacion_partido"})
public class CProgramacion_Partido extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    InterfaceProrgamacionPartidoDAO iq = new ProgramacionPartidoDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("UTF-8");
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        Map<String, Object> rpta = new HashMap<String, Object>();
        String opc = request.getParameter("opc");
        try {
            if (opc.equals("Cant_Torneo")) {
                String id_torneo = request.getParameter("id_torneo");
                int can_equipos = iq.Cantidad_Equipos(id_torneo);
                // out.print(can_equipos);
            }
            if ("ListarLozas_Horario".equals(opc)) {
                String id_torneo = request.getParameter("id_torneo");
                String id_cat_juego = request.getParameter("id_cat_juego");
                List<Map<String, ?>> list = iq.Listar_Cronograma(id_torneo, id_cat_juego);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if (opc.equals("Progamar_Juego")) {
                String id_torneo = request.getParameter("id_torneo");
                String id_cat_juego = request.getParameter("id_cat_juego");
                String tipo_juego = request.getParameter("tipo_juego");
                double tiempo_juego = Double.parseDouble(request.getParameter("tiempo_juego"));
                double tiempo_espera = Double.parseDouble(request.getParameter("tiempo_espera"));
                iq.Programar_Juego(id_torneo, id_cat_juego, tipo_juego, tiempo_juego, tiempo_espera);
            }
            if (opc.equals("Nuevo_Calculo")) {
                String id_torneo = request.getParameter("id_torneo");
                String id_cat_juego = request.getParameter("id_cat_juego");
                String tipo_juego = request.getParameter("tipo_juego");
                iq.Eliminar_Programacion(id_torneo, id_cat_juego);
                double tiempo_juego = Double.parseDouble(request.getParameter("tiempo_juego"));
                double tiempo_espera = Double.parseDouble(request.getParameter("tiempo_espera"));
                iq.Programar_Juego(id_torneo, id_cat_juego, tipo_juego, tiempo_juego, tiempo_espera);
            }
            if ("Listar_categorias".equals(opc)) {
                String id_torneo = request.getParameter("id_torneo");
                List<Map<String, ?>> list = iq.Listar_Cat_juego(id_torneo);
                rpta.put("rpta", "1");
                rpta.put("lista", list);
            }
            if ("Mostrar_Nombre_torneo".equals(opc)) {
                String id_torneo = request.getParameter("id_torneo");
                String no_torneo = iq.Mostrar_Nombre_torneo(id_torneo);
                rpta.put("rpta", "1");
                rpta.put("lista", no_torneo);
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
