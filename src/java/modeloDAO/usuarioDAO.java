package modeloDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import modeloVO.usuarioVO;
import modeloVO.rolVO;
import util.conexion;
import util.crud;

public class usuarioDAO extends conexion implements crud {

    private Connection con = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    private String sql;
    private boolean operacion = false;
     
    private String id_usuario = "";
    private String nombre_usuario = "";
    private String apellido_usuario = "";
    private String telefono_usuario = "";
    private String correo_usuario = "";
    private String clave_usuario = "";
    private String estado_usuario = "";
    
    private String id_rol = "";
    
    public usuarioDAO() {
    }
    
    public usuarioDAO(usuarioVO usuVO){
        super(); 
        try{
            con = this.obtenerConexion();
            id_usuario = usuVO.getId_usuario();
            nombre_usuario = usuVO.getNombre_usuario();
            apellido_usuario = usuVO.getApellido_usuario();
            telefono_usuario = usuVO.getTelefono_usuario();
            correo_usuario = usuVO.getCorreo_usuario();
            clave_usuario = usuVO.getClave_usuario();
            estado_usuario = usuVO.getEstado_usuario();
        }catch (Exception e){
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e);
        }
    }
    
    @Override
    public boolean agregarRegistro() {
        try{
            con = this.obtenerConexion();
            sql = "call spc_usuario (?,?,?,?,?,?,?)";
            puente = con.prepareStatement(sql);
            puente.setString(1,id_usuario);
            puente.setString(2,nombre_usuario);
            puente.setString(3,apellido_usuario);
            puente.setString(4,telefono_usuario);
            puente.setString(5,correo_usuario);
            puente.setString(6,clave_usuario);
            puente.setString(7,"Activo");
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
        }
        return operacion;
    }
    
    @Override
    public boolean consultarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarRegistro() {
        try{
            sql = "call spu_usuario (?,?,?,?,?)";
            puente = con.prepareStatement(sql);
            puente.setString(1,id_usuario);
            puente.setString(2,nombre_usuario);
            puente.setString(3,apellido_usuario);
            puente.setString(4,telefono_usuario);
            puente.setString(5,correo_usuario);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public usuarioVO inicioSesion(String correo_usuario, String clave_usuario){
        usuarioVO usvo = null;
        try{
            con = this.obtenerConexion();  
            sql = "select * from usuario where correo_usuario= ? and contraseña_usuario= ? and 	Estado_usuario = ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, correo_usuario );  
            puente.setString(2, clave_usuario);
            puente.setString(3, "Activo");
            mensajero = puente.executeQuery();  
            if (mensajero.next()) {  
                usvo = new usuarioVO(mensajero.getString(1),mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),mensajero.getString(7));
            }
        }catch (SQLException e){
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
        } 
        return usvo;
    }
    
     public boolean defrol(String id_usuario, String id_rol){
        try{
            con = this.obtenerConexion();  
            sql = "INSERT INTO `rol_usuario`(`Id_usuario_fk`, `Id_rol_fk`) VALUES (?,?)";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, id_usuario);  
            puente.setString(2, id_rol); 
            puente.executeUpdate();  
        }catch (SQLException e){
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
        } 
        return operacion;
    }
     
    public boolean enviarCorreo(String correoEmail, String loginEmail){
        usuarioVO usvo = null;
        try{
            sql = "select * from usuario where id_usuario = ? and correo = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1,loginEmail);
            puente.setString(2,correoEmail);
            ResultSet rs = puente.executeQuery();
                if(rs.next()){
                    usvo = new usuarioVO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));
                }
                //el correo al cual envias
                String Correo_Usu = usvo.getCorreo_usuario();
                
                Properties props = new Properties();

                // Nombre del host de correo, es smtp.gmail.com
                props.setProperty("mail.smtp.host", "smtp.gmail.com");

                // TLS si está disponible
                props.setProperty("mail.smtp.starttls.enable", "true");

                // Puerto de gmail para envio de correos
                props.setProperty("mail.smtp.port","587");

                // Correo personal
                props.setProperty("mail.smtp.user", "gabrielamelissamatallanab@gmail.com");

                // Si requiere o no usuario y password para conectarse.
                props.setProperty("mail.smtp.auth", "true");

                //Con esto estamos en disposición de obtener nuestra instancia de Session.

                Session session = Session.getDefaultInstance(props);
                session.setDebug(true);

                //Mensaje
                MimeMessage message = new MimeMessage(session);

                // Quien envia el correo
                message.setFrom(new InternetAddress("gamercalabozo@gmail.com"));

                // A quien va dirigido
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(Correo_Usu));

                message.setSubject("Recuperacion de contraseña");
                message.setText(
                "Este mensaje es con el fin de realizar la recuperacion de contraseña<br>" + "<a href=\"http://localhost:8080/cg/recuperar_clave.jsp?IdUs="+ usvo.getId_usuario()+"\">Recuperar contraseña</a>",
                "ISO-8859-1",
                "html");
                Transport t = session.getTransport("smtp");
                t.connect("calabozogamer@gmail.com","clavedelcorreoxd");

                t.sendMessage(message,message.getAllRecipients());
                t.close();

                System.out.println("to good");
                operacion = true;
            } catch (Exception e) {
                System.out.println("A la chingada " + e);
                operacion = false;
            }
        return operacion;
    }
    
    public usuarioVO consultarRegistrousu(String id_usuario) {
        usuarioVO usuVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from usuario where id_usuario = ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, id_usuario); 
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                usuVO = new usuarioVO(mensajero.getString(1),mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5),id_usuario);
            }
        }catch (SQLException e){
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
        } 
        return usuVO;
    }
    
    public usuarioVO consultarRegistrous(String id_usuario) {
        usuarioVO usuVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from usuario where id_usuario = ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, id_usuario); 
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                usuVO = new usuarioVO(mensajero.getString(1),mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),id_usuario);
            }
        }catch (SQLException e){
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
        } 
        return usuVO;
    }
    
    public boolean desactivarCuenta() {
        try{
            sql = "UPDATE `usuario` SET `estado_usuario`= ? WHERE `Id_usuario`= ?";
            puente = con.prepareStatement(sql);
            puente.setString(1,"Desactivo");
            puente.setString(2,id_usuario);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }
    
    public boolean recuperarClave() {
        try{
            sql = "UPDATE `usuario` SET `contraseña_usuario`= ? WHERE `Id_usuario`= ?";
            puente = con.prepareStatement(sql);
            puente.setString(1,clave_usuario);
            puente.setString(2,id_usuario);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(usuarioDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }
}
