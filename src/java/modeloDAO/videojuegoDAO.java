package modeloDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.videojuegoVO;
import util.conexion;
import util.crud;

public class videojuegoDAO extends conexion implements crud {
    private Connection con = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    private String sql;
    private boolean operacion = false;
    
    private String id_videojuego = "";
    private String nombre_videojuego = "";
    private String id_catvj = "";
    
    public videojuegoDAO() {
    }
    
    public videojuegoDAO(videojuegoVO vjVO){
        super(); 
        try{
            con = this.obtenerConexion();
            id_videojuego = vjVO.getId_videojuego();
            nombre_videojuego = vjVO.getNombre_videojuego();
        }catch (Exception e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e);
        }
    }

    
        
    @Override
    public boolean agregarRegistro() {
        try{
            con = this.obtenerConexion();
            sql = "call spc_videojuego (?)";
            puente = con.prepareStatement(sql);
            puente.setString(1, nombre_videojuego);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }
        return operacion;   
    }

    
    @Override
    public boolean consultarRegistro() {
        try{
            sql = "call spr_videojuego";
            puente = con.prepareStatement(sql);
            puente.setString(1,nombre_videojuego);
            puente.setString(2,id_videojuego);
            mensajero = puente.executeQuery();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }

    @Override
    public boolean actualizarRegistro() {
        try{
            sql = "call spu_videojuego (?,?)";
            puente = con.prepareStatement(sql);
            puente.setString(1,id_videojuego);
            puente.setString(2,nombre_videojuego);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }

    @Override
    public boolean eliminarRegistro() {
        try{
           sql = "call spd_videojuego (?)";
           puente = con.prepareStatement(sql);
           puente.setString(1,nombre_videojuego);
           puente.executeUpdate();
           operacion = true;
        }catch(SQLException e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    } 
    
    public ArrayList <videojuegoVO>listar(){
        ArrayList <videojuegoVO>listavideojuego = new ArrayList<videojuegoVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "call spr2_videojuego()"; 
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                videojuegoVO videojuegoVO = new  videojuegoVO (mensajero.getString(1),mensajero.getString(2));
                listavideojuego.add(videojuegoVO);
            }
        }catch (SQLException e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }
        return listavideojuego;
    }
    
    public videojuegoVO consultarvideojuego(String nombre_videojuego){
        videojuegoVO videojuegoVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from videojuego where nombre_videojuego = ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, nombre_videojuego);
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                videojuegoVO = new videojuegoVO(mensajero.getString(1),nombre_videojuego);
            }
        }catch (SQLException e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
        } 
        return videojuegoVO;
    }
    
    public videojuegoVO consultarcat(String nombre_categoria){
        videojuegoVO videojuegoVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from categoria_videojuego where nombre_categoria_videojuego = ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, nombre_categoria);
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                videojuegoVO = new videojuegoVO(mensajero.getString(1));
            }
        }catch (SQLException e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
        } 
        return videojuegoVO;
    }
    
    public videojuegoVO consultarvideojuegoe(String nombre_videojuego){
        videojuegoVO videojuegoVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from videojuego where nombre_videojuego = ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, nombre_videojuego); 
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                videojuegoVO = new videojuegoVO(mensajero.getString(1),nombre_videojuego);
            }
        }catch (SQLException e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return videojuegoVO;
    }
    
    public boolean defcat(String id_videojuego, String id_catvj){
        try{
            con = this.obtenerConexion();  
            sql = "call spc_vid_cat (?,?)"; 
            puente = con.prepareStatement(sql);  
            puente.setString(1, id_videojuego);  
            puente.setString(2, id_catvj); 
            puente.executeUpdate();  
        }catch (SQLException e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
        } 
        return operacion;
    }
    
    public ArrayList <videojuegoVO>listarvid(){
        ArrayList <videojuegoVO>listavid = new ArrayList<videojuegoVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "call spr_videojuego"; 
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                videojuegoVO videojuegoVO = new  videojuegoVO (mensajero.getString(1),mensajero.getString(2));
                listavid.add(videojuegoVO);
            }
        }catch (SQLException e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }
        return listavid;
    }
}
     
     

   
