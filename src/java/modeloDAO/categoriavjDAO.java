package modeloDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.categoriavjVO;
import util.conexion;
import util.crud;

public class categoriavjDAO extends conexion implements crud {
    private Connection con = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    private String sql;
    private boolean operacion = false;
    private String id_catvj = "";
    private String nombre_catvj = "";
    
    public categoriavjDAO() {
    }
    
    public categoriavjDAO(categoriavjVO catvjVO){
        super(); 
        try{
            con = this.obtenerConexion();
            id_catvj = catvjVO.getId_catvj();
            nombre_catvj = catvjVO.getNombre_catvj();
        }catch (Exception e){
            Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try{
            con = this.obtenerConexion();
            sql = "call spc_catvj (?)";
            puente = con.prepareStatement(sql);
            puente.setString(1, nombre_catvj);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion;  
    }

    @Override
    public boolean consultarRegistro() {
        try{
            sql = "call spr_categoria();";
            puente = con.prepareStatement(sql);
            puente.setString(1,nombre_catvj);
            mensajero = puente.executeQuery();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }

    @Override
    public boolean actualizarRegistro() {
        try{
           sql = "UPDATE `categoria_videojuego` SET `Nombre_categoria_videojuego`= ? WHERE `Id_categoria_videojuego`= ?";
           puente = con.prepareStatement(sql);
           puente.setString(1,nombre_catvj);
           puente.setString(2,id_catvj);
           puente.executeUpdate();
           operacion = true;
        }catch(SQLException e){
            Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }

    @Override
    public boolean eliminarRegistro() {
        try{
            sql = "delete from categoria_videojuego where nombre_categoria_videojuego = ?";
            puente = con.prepareStatement(sql);
            puente.setString(1,nombre_catvj);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }
    
    public ArrayList <categoriavjVO>listar(){
        ArrayList <categoriavjVO>listacat= new ArrayList<categoriavjVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "call spr_categoria();"; 
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                categoriavjVO catVO = new categoriavjVO (mensajero.getString(1),mensajero.getString(2));
                listacat.add(catVO);
            }
        }catch (SQLException e){
            Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
        } 
        return listacat;
    }
    
    public categoriavjVO consultarcatvj(String nombre_categoria_videojuego){
        categoriavjVO categoriavjVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from categoria_videojuego where nombre_categoria_videojuego= ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, nombre_categoria_videojuego); 
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                categoriavjVO = new categoriavjVO(mensajero.getString(1),nombre_categoria_videojuego);
            }
        }catch (SQLException e){
            Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e);
        }
        return categoriavjVO;
    }
    
    public categoriavjVO consultarcatvje(String nombre_categoria_videojuego){
        categoriavjVO categoriavjVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from categoria_videojuego where nombre_categoria_videojuego= ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, nombre_categoria_videojuego); 
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                categoriavjVO = new categoriavjVO(mensajero.getString(1),nombre_categoria_videojuego);
            }
        }catch (SQLException e){
            Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
        } 
        return categoriavjVO;
    }
}