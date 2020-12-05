package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modeloDAO.usuarioDAO;
import modeloVO.usuarioVO;
import modeloVO.rolVO;
import modeloDAO.rolDAO;
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author User
 */
@WebServlet(name = "usuarioControlador", urlPatterns = {"/usuario"})
public class usuarioControlador extends HttpServlet {

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
            String id_usuario = request.getParameter("textId");
            String nombre_usuario = request.getParameter("textNombre");
            String apellido_usuario = request.getParameter("textApellido");
            String telefono_usuario = request.getParameter("textTelefono");
            String correo_usuario = request.getParameter("textCorreo");
            String clave_usuario = null;
            String estado_usuario = request.getParameter("textEstado");
            String id_rol = request.getParameter("textrol");

            if(request.getParameter("textClave") != null){
                clave_usuario = DigestUtils.md5Hex(request.getParameter("textClave"));
            }

            usuarioVO usuVO = new usuarioVO(id_usuario,nombre_usuario,apellido_usuario,telefono_usuario,correo_usuario,clave_usuario,estado_usuario);
            usuarioDAO usuDAO = new usuarioDAO(usuVO);

            switch(opcion){
                case 1://Agregar registro
                    if (usuDAO.agregarRegistro()){
                        usuDAO.defrol(id_usuario, id_rol);
                        request.setAttribute("MensajeExito", "El usuario se registro correctamente");
                    }else{
                        request.setAttribute("MensajeError", "El usuario no se registro correctamente");
                    }
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
                case 2://Iniciar sesión
                    usuarioVO usses = (usuarioVO) usuDAO.inicioSesion(correo_usuario, clave_usuario);
                    if ( usses != null){
                        //Crea una sesion 
                        HttpSession misesion = request.getSession(true);
                        misesion.setAttribute("usuario", usses); 
                        rolVO rolr = new rolVO();
                        rolDAO rol = new rolDAO(rolr);
                        misesion.setAttribute("rol", rol.obtenerRol(usses.getId_usuario())); 
                        request.getRequestDispatcher("menu.jsp").forward(request, response); 
                    }else{
                        request.setAttribute("MensajeError", "El usuario y/o la contraseña son incorrectos, también es posible que hayas desactivado tu cuenta");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                break;
                case 3://Actualizar registro
                    if(usuDAO.actualizarRegistro()) {
                        request.setAttribute("MensajeExito", "Los datos del usuario se actualizaron correctamente");
                    }else {
                        request.setAttribute("MensajeError", "Los datos del usuario no se actualizo correctamente");
                    }
                    request.getRequestDispatcher("menu.jsp").forward(request, response);
                break; 
                case 4://consultar 
                    usuVO = usuDAO.consultarRegistrousu(id_usuario);
                    if (usuVO != null) {
                        request.setAttribute("usuario", usuVO);
                        request.getRequestDispatcher("m_usuario.jsp").forward(request, response);
                    }else {
                        request.setAttribute("MensajeError", "Hubo un error al consultar tu usuario");
                        request.getRequestDispatcher("perfil.jsp").forward(request, response);
                    }
                break;
                case 5://consultar perfil
                    usuVO = usuDAO.consultarRegistrous(id_usuario);
                    if (usuVO != null) {
                        request.setAttribute("usuario", usuVO);
                        request.getRequestDispatcher("perfil.jsp").forward(request, response);
                    }else {
                        request.setAttribute("MensajeError", "Hubo un error al consultar tu usuario");
                        request.getRequestDispatcher("perfil.jsp").forward(request, response);
                    }
                break;    
                case 6://Desactivar cuenta
                    if (usuDAO.desactivarCuenta()){
                        request.setAttribute("MensajeExito", "La cuenta se desactivo correctamente");
                    }else{
                        request.setAttribute("MensajeError", "La cuenta no se desactivo correctamente");
                    }
                    request.getRequestDispatcher("index.jsp").forward(request, response);
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
