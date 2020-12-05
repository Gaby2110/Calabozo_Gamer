package controlador;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.videojuegoDAO;
import modeloVO.videojuegoVO;
import modeloVO.categoriavjVO;
import modeloDAO.categoriavjDAO;

/**
 *
 * @author User
 */
@WebServlet(name = "videojuegoControlador", urlPatterns = {"/videojuego"})
public class videojuegoControlador extends HttpServlet {

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
            String id_videojuego = request.getParameter("textid");
            String nombre_videojuego = request.getParameter("textnombre");
            String nombre_catvj= request.getParameter("textcat");
            String id_catvj = request.getParameter("textidcat");
            videojuegoVO vjVO = new videojuegoVO(id_videojuego,nombre_videojuego);
            videojuegoDAO vjDAO = new videojuegoDAO(vjVO);

            switch(opcion){
                case 1://Agregar registro
                    if (vjDAO.agregarRegistro()){
                        request.setAttribute("MensajeExito", "El videojuego se registro correctamente");
                    }else{
                        request.setAttribute("MensajeError", "El videojuego no se registro correctamente");
                    }
                    request.getRequestDispatcher("videojuego.jsp").forward(request, response);
                break;
                case 2://Asociar registro
                    if (vjDAO.defcat(id_videojuego,id_catvj)) {
                        request.setAttribute("MensajeExito", "Los videojuegos se consultaron correctamente");
                    }else {
                        request.setAttribute("MensajeError", "Los videojuegos no se consultaron correctamente");
                    }
                    request.getRequestDispatcher("videojuego.jsp").forward(request, response);
                break;
                case 3://consultar videojuego
                    vjVO = vjDAO.consultarvideojuego(nombre_videojuego);
                    if (vjVO != null) {
                        request.setAttribute("videojuego", vjVO);
                        request.getRequestDispatcher("m_videojuego.jsp").forward(request, response);
                    }else {
                        request.setAttribute("MensajeError", "El videojuego no existe");
                        request.getRequestDispatcher("m_videojuego.jsp").forward(request, response);
                    }
                    break;
                case 4://Actualizar registro
                    if(vjDAO.actualizarRegistro()) {
                        request.setAttribute("MensajeExito", "El videojuego se actualizo correctamente");
                    }else {
                        request.setAttribute("MensajeError", "El videojuego no se actualizo correctamente");
                    }
                    request.getRequestDispatcher("m_videojuego.jsp").forward(request, response);
                break;   
                case 5://Eliminar registro
                    if(vjDAO.eliminarRegistro()) {
                        request.setAttribute("MensajeExito", "El videojuego se elimino correctamente");
                    }else {
                        request.setAttribute("MensajeError", "El videojuego no se elimino correctamente");
                    }
                    request.getRequestDispatcher("m_videojuego.jsp").forward(request, response);
                break;  
                case 6://consultar videojuego eliminar
                    vjVO = vjDAO.consultarvideojuegoe(nombre_videojuego);
                    if (vjVO != null) {
                        request.setAttribute("videojuego", vjVO);
                        request.getRequestDispatcher("m_videojuego.jsp").forward(request, response);
                    } else {
                        request.setAttribute("MensajeError", "El videojuego no existe");
                        request.getRequestDispatcher("m_videojuego.jsp").forward(request, response);
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
