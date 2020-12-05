package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.categoriavjDAO;
import modeloVO.categoriavjVO;

/**
 *
 * @author User
 */
@WebServlet(name = "categoriavjControlador", urlPatterns = {"/categoriavj"})
public class categoriavjControlador extends HttpServlet {

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
            String id_catvj = request.getParameter("textid");
            String nombre_catvj = request.getParameter("textnombre");

            categoriavjVO catvjVO = new categoriavjVO (id_catvj,nombre_catvj);
            categoriavjDAO catvjDAO = new categoriavjDAO(catvjVO);

            switch(opcion){
                case 1://Agregar registro
                    if (catvjDAO.agregarRegistro()){
                        request.setAttribute("MensajeExito", "La categoria se registro correctamente");
                    }else{
                        request.setAttribute("MensajeError", "La categoria no se registro correctamente");
                    }
                    request.getRequestDispatcher("catvj.jsp").forward(request, response);
                break;
                case 2://Listar registro
                    if (catvjDAO.consultarRegistro()) {
                        request.setAttribute("MensajeExito", "Las categoria de videojuegos se consultaron correctamente");
                    }else {
                        request.setAttribute("MensajeError", "Las categoria de videojuegos no se consultaron correctamente");
                    }
                    request.getRequestDispatcher("catvj.jsp").forward(request, response);
                break;
                case 3://consultar categoria
                    catvjVO = catvjDAO.consultarcatvj(nombre_catvj);
                    if (catvjVO != null) {
                        request.setAttribute("categoria_videojuego", catvjVO);
                        request.getRequestDispatcher("m_catvj.jsp").forward(request, response);
                    }else {
                        request.setAttribute("MensajeError", "La categoria no existe");
                        request.getRequestDispatcher("m_catvj.jsp").forward(request, response);
                    }
                break;
                case 4://Actualizar registro
                    if(catvjDAO.actualizarRegistro()) {
                        request.setAttribute("MensajeExito", "La categoria se actualizo correctamente");
                    }else {
                        request.setAttribute("MensajeError", "La categoria no se actualizo correctamente");
                    }
                    request.getRequestDispatcher("m_catvj.jsp").forward(request, response);
                break;   
                case 5://Eliminar registro
                    if(catvjDAO.eliminarRegistro()) {
                        request.setAttribute("MensajeExito", "La categoria se elimino correctamente");
                    }else {
                        request.setAttribute("MensajeError", "La categoria no se elimino correctamente");
                    }
                    request.getRequestDispatcher("m_catvj.jsp").forward(request, response);
                break;  
                case 6://consultar categoria videojuego eliminar
                    catvjVO = catvjDAO.consultarcatvje(nombre_catvj);
                    if (catvjVO != null) {
                        request.setAttribute("categoria_videojuego", catvjVO);
                        request.getRequestDispatcher("m_catvj.jsp").forward(request, response);
                    }else {
                        request.setAttribute("MensajeError", "La categoria no existe");
                        request.getRequestDispatcher("m_catvj.jsp").forward(request, response);
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
