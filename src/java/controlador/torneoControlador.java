/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.torneoDAO;
import modeloVO.torneoVO;
import modeloVO.videojuegoVO;

/**
 *
 * @author User
 */
@WebServlet(name = "torneoControlador", urlPatterns = {"/torneo"})
public class torneoControlador extends HttpServlet {

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
            int opcion = Integer.parseInt(request.getParameter("opcion"));
            String id_torneo = request.getParameter("textid");
            String nombre_torneo = request.getParameter("textnombre");
            String numero_participantes_torneo = request.getParameter("textparticipantes");
            String fecha_comienzo_torneo = request.getParameter("textfechacomienzo");
            String fecha_fin_torneo = request.getParameter("textfechafin");
            String ubicacion_torneo = request.getParameter("textubicacion");
            String estado_torneo = request.getParameter("textestado");
            String id_torneo_usuario = request.getParameter("textidus");
            String descripcion_premio = request.getParameter("textpremio");
            String id_competencia_videojuego_fk = request.getParameter("textvid");
            String id_torneo_fk = request.getParameter("textidfk");
            String Id_competencia_fk = request.getParameter("textidcom");
            String id_usuario = request.getParameter("textusu");
            torneoVO torneoVO = new torneoVO(id_torneo,nombre_torneo,numero_participantes_torneo,fecha_comienzo_torneo,fecha_fin_torneo,ubicacion_torneo,estado_torneo,id_torneo_usuario,descripcion_premio,id_competencia_videojuego_fk);
            videojuegoVO videojuegoVO = new videojuegoVO(id_competencia_videojuego_fk);
            torneoDAO torneoDAO = new torneoDAO(torneoVO);
            switch(opcion){
                case 1://Agregar registro
                    if (torneoDAO.agregarRegistro()){
                        request.setAttribute("MensajeExito", "El torneo se registro correctamente");
                    }else{
                        request.setAttribute("MensajeError", "El torneo no se registro correctamente");
                    }
                    request.getRequestDispatcher("torneo.jsp").forward(request, response);
                break;
                case 2://Listar registro
                    if (torneoDAO.consultarRegistro()) {
                        request.setAttribute("MensajeExito", "Los torneos se consultaron correctamente");
                    }else {
                        request.setAttribute("MensajeError", "Los torneos no se consultaron correctamente");
                    }
                    request.getRequestDispatcher("torneo.jsp").forward(request, response);
                break;
                case 3://consultar torneo inscripcion
                    torneoVO = torneoDAO.consultartorneo(nombre_torneo);
                    if (torneoVO != null) {
                        request.setAttribute("torneo", torneoVO);
                    }else {
                        request.setAttribute("MensajeError", "El torneo no existe");
                    }
                break;
                case 4://Actualizar registro
                    if(torneoDAO.actualizarRegistro()) {
                        request.setAttribute("MensajeExito", "El torneo se actualizo correctamente");
                    }else {
                        request.setAttribute("MensajeError", "El torneo no se actualizo correctamente");
                    }
                    request.getRequestDispatcher("m_torneo.jsp").forward(request, response);
                break;    
                case 5://Eliminar registro
                    if(torneoDAO.eliminarRegistro()) {
                        request.setAttribute("MensajeExito", "El torneo se elimino correctamente");
                    }else {
                        request.setAttribute("MensajeError", "El torneo no se elimino correctamente");
                    }
                    request.getRequestDispatcher("m_torneo.jsp").forward(request, response);
                break; 
                case 6://consultar torneo eliminar
                    torneoVO = torneoDAO.consultartorneoe(nombre_torneo);
                    if (torneoVO != null) {
                        request.setAttribute("torneo", torneoVO);
                        request.getRequestDispatcher("m_torneo.jsp").forward(request, response);
                    }else {
                        request.setAttribute("MensajeError", "El torneo no existe");
                        request.getRequestDispatcher("m_torneo.jsp").forward(request, response);
                    }
                break;
                case 7://Incribirse en un torneo
                    if (torneoDAO.inscripusu(id_torneo_fk,id_usuario)){
                        request.setAttribute("MensajeExito", "El usuario se inscribio correctamente");
                    }else{
                        request.setAttribute("MensajeError", "El usuario no se inscribio correctamente");
                    }
                    request.getRequestDispatcher("inscripcion_torneo.jsp").forward(request, response);
                break;
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
