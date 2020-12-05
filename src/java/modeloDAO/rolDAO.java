package modeloDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.rolVO;
import util.conexion;
import util.crud;

public class rolDAO extends conexion implements crud {
    private Connection con = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    
    private String sql;
    private boolean operacion = false;
    
    private String id_rol = "";
    private String nombre_rol = "";
    
    public rolDAO() {
    }
     
    public rolDAO(rolVO rolVO){
        super(); 
        try{
            con = this.obtenerConexion();
            id_rol = rolVO.getId_rol();
            nombre_rol = rolVO.getNombre_rol();
        }catch (Exception e){
            Logger.getLogger(rolDAO.class.getName()).log(Level.SEVERE,null,e);
        }
    }
      
    @Override
    public boolean agregarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean consultarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public ArrayList <rolVO>listar(){
        ArrayList <rolVO>listarol = new ArrayList<rolVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "call spr_rol()"; 
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                rolVO rolVO = new rolVO (mensajero.getString(1),mensajero.getString(2));
                listarol.add(rolVO);
            }
        }catch (SQLException e){
            Logger.getLogger(rolDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(rolDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return listarol;
    }
    
    public String obtenerRol(String UsuarioID){
        String rol = "";
        try{
            con = this.obtenerConexion(); 
            sql = "SELECT r.Nombre_rol FROM `rol_usuario` as ru inner join rol as r on ru.`Id_rol_fk` = r.Id_rol and ru.Id_usuario_fk = ?"; 
            puente = con.prepareStatement(sql);
            puente.setString(1, UsuarioID);
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                rol = mensajero.getString(1);
            }
        }catch (SQLException e){
            Logger.getLogger(rolDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(rolDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return rol;
    }
    
}
