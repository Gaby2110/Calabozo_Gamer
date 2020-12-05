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
import modeloDAO.encuentroDAO;
import modeloDAO.torneoDAO;
import modeloVO.encuentroVO;
import modeloVO.torneoVO;

/**
 *
 * @author User
 */
@WebServlet(name = "encuentroControlador", urlPatterns = {"/encuentro"})
public class encuentroControlador extends HttpServlet {

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
            String id_encuentro = request.getParameter("textid");
            String fecha_encuentro = request.getParameter("textfecha");
            String ubicacion_encuentro = request.getParameter("textubicacion");
            String id_torneo_encuentro = request.getParameter("texttorneo");
            String ronda = request.getParameter("textronda");
            String participante = request.getParameter("textparticipante");

            encuentroVO encuentroVO = new encuentroVO(id_encuentro,fecha_encuentro,ubicacion_encuentro,id_torneo_encuentro,ronda);
            encuentroDAO encuentroDAO = new encuentroDAO(encuentroVO);

            switch(opcion){
                case 1://Agregar registro
                    if (encuentroDAO.agregarRegistro()){
                        request.setAttribute("MensajeExito", "El encuentro se registro correctamente");
                    }else{
                        request.setAttribute("MensajeError", "El encuentro no se registro correctamente");
                    }
                    request.getRequestDispatcher("encuentro.jsp").forward(request, response);
                break;
                case 2://Consultar registro
                    if (encuentroDAO.consultarRegistro()) {
                        request.setAttribute("MensajeExito", "Los encuentros se consultaron correctamente");
                    }else {
                        request.setAttribute("MensajeError", "Los encuentros no se consultaron correctamente");
                    }
                    request.getRequestDispatcher("encuentro.jsp").forward(request, response);
                break;
                case 3://consultar encuentro
                    encuentroVO = encuentroDAO.consultarencuentro(id_encuentro);
                    if (encuentroVO != null) {
                        request.setAttribute("encuentro", encuentroVO);
                        request.getRequestDispatcher("m_encuentro.jsp").forward(request, response);
                    }else {
                        request.setAttribute("MensajeError", "El encuentro no existe");
                        request.getRequestDispatcher("m_encuentro.jsp").forward(request, response);
                    }
                break;
                case 4://Actualizar registro
                    if (encuentroDAO.actualizarRegistro()) {
                        request.setAttribute("MensajeExito", "El encuentro se actualizo correctamente");
                    }else {
                        request.setAttribute("MensajeError", "El encuentro no se actualizo correctamente");
                    }
                    request.getRequestDispatcher("m_encuentro.jsp").forward(request, response);
                break;    
                case 5://Eliminar registro
                    if(encuentroDAO.eliminarRegistro()) {
                        request.setAttribute("MensajeExito", "El encuentro se elimino correctamente");
                    }else {
                        request.setAttribute("MensajeError", "El encuentro no se elimino correctamente");
                    }
                    request.getRequestDispatcher("e_encuentro.jsp").forward(request, response);
                break;  
                case 6://consultar videojuego eliminar
                    encuentroVO = encuentroDAO.consultarencuentroe(id_encuentro);
                    if (encuentroVO != null) {
                        request.setAttribute("encuentro", encuentroVO);
                        request.getRequestDispatcher("e_encuentro.jsp").forward(request, response);
                    }else {
                        request.setAttribute("MensajeError", "El videojuego no existe");
                        request.getRequestDispatcher("e_encuentro.jsp").forward(request, response);
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
