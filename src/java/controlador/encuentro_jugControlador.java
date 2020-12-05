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
import modeloDAO.encuentro_jugDAO;
import modeloVO.encu_jugVO;

/**
 *
 * @author User
 */
@WebServlet(name = "encuentro_jugControlador", urlPatterns = {"/encu_jug"})
public class encuentro_jugControlador extends HttpServlet {

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
        String id_torneo_encuentro = request.getParameter("texttorneo");
        String ronda = request.getParameter("textronda");
        String participante = request.getParameter("textparticipante");
        String resultado = request.getParameter("textresultado");
        encu_jugVO encu_jugVO = new encu_jugVO(resultado,participante,id_torneo_encuentro,ronda);
        encuentro_jugDAO encuentro_jugDAO = new encuentro_jugDAO(encu_jugVO);
        
        switch(opcion){
            case 1://Agregar registro
                if (encuentro_jugDAO.resultadose()){
                    request.setAttribute("MensajeExito", "El resultado se registro correctamente");
                }else{
                    request.setAttribute("MensajeError", "El resultado no se registro correctamente");
                }
                request.getRequestDispatcher("resultados.jsp").forward(request, response);
            break;
            case 2://Agregar registro
                if (Integer.parseInt(ronda) == 1){
                    System.out.println("se ejecuto el primer algo");
                    encuentro_jugDAO.listare();
                    request.setAttribute("MensajeExito", "La programación se registro correctamente");
                }else if(Integer.parseInt(ronda) >= 2){
                    System.out.println("se ejecuto el segundo");
                    encuentro_jugDAO.listarep();
                    request.setAttribute("MensajeExito", "La programación se registro correctamente");
                }
                else{
                    request.setAttribute("MensajeError", "La programación no se registro correctamente");
                } 
                request.getRequestDispatcher("programacion.jsp").forward(request, response);
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
