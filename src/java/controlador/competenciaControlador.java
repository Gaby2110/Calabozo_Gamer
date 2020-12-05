/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.competenciaDAO;
import modeloVO.competenciaVO;

/**
 *
 * @author User
 */
@WebServlet(name = "competenciaControlador", urlPatterns = {"/competencia"})
public class competenciaControlador extends HttpServlet {

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
            String  id_competencia = request.getParameter("textid");
            String id_competencia_videojuego = request.getParameter("textidvid");
            String id_competencia_torneo = request.getParameter("textidtorneo");
            competenciaVO competenciaVO = new competenciaVO(id_competencia,id_competencia_videojuego,id_competencia_torneo);
            competenciaDAO competenciaDAO = new competenciaDAO(competenciaVO);

            switch(opcion){
                case 1://Agregar registro
                    if (competenciaDAO.agregarRegistro()){
                        request.setAttribute("MensajeExito", "La competencia se registro correctamente");
                    }else{
                        request.setAttribute("MensajeError", "La competencia no se registro correctamente");
                    }
                    request.getRequestDispatcher("competencia.jsp").forward(request, response);
                break;
                case 2://Listar registro
                    if (competenciaDAO.consultarRegistro()) {
                        request.setAttribute("MensajeExito", "La competencia se consulto correctamente");
                    }else {
                        request.setAttribute("MensajeError", "La competencia no se consulto correctamente");
                    }
                    request.getRequestDispatcher("competencia.jsp").forward(request, response);
                break;
                case 3://consultar videojuego
                    /*competencia = competenciaDAO.consultarcompetencia(id_competencia);
                    if (competenciaVO != null) {
                        request.setAttribute("competencia", competenciaVO);
                        request.getRequestDispatcher("m_competencia.jsp").forward(request, response);
                    } else {
                        request.setAttribute("MensajeError", "El videojuego no existe");
                        request.getRequestDispatcher("m_catvj.jsp").forward(request, response);
                    }
                    break;*/
                case 4://Actualizar registro
                    if(competenciaDAO.actualizarRegistro()) {
                        request.setAttribute("MensajeExito", "El videojuego se actualizo correctamente");
                    }else {
                        request.setAttribute("MensajeError", "El videojuego no se actualizo correctamente");
                    }
                    request.getRequestDispatcher("m_catvj.jsp").forward(request, response);
                break;   
                case 5://Eliminar registro
                    if(competenciaDAO.eliminarRegistro()) {
                        request.setAttribute("MensajeExito", "La competencia se elimino correctamente");
                    }else {
                        request.setAttribute("MensajeError", "La competencia no se elimino correctamente");
                    }
                    request.getRequestDispatcher("e_competencia.jsp").forward(request, response);
                break;  
                case 6://consultar videojuego eliminar
                    competenciaVO = competenciaDAO.consultarcompetenciae(id_competencia);
                    if (competenciaVO != null) {
                        request.setAttribute("videojuego", competenciaVO);
                        request.getRequestDispatcher("e_competencia.jsp").forward(request, response);
                    }else {
                        request.setAttribute("MensajeError", "La competencia no existe");
                        request.getRequestDispatcher("e_competencia.jsp").forward(request, response);
                    }
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
