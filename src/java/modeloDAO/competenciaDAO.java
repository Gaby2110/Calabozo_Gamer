package modeloDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.categoriavjVO;
import modeloVO.competenciaVO;
import util.conexion;
import util.crud;

public class competenciaDAO extends conexion implements crud {
    private Connection con = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    private String sql;
    private boolean operacion = false;
    private String id_competencia = "";
    private String id_competencia_videojuego = "";
    private String id_competencia_torneo = "";
   
    
     public competenciaDAO() {
    }
    
    public competenciaDAO(competenciaVO competenciaVO){
        super(); 
        try{
            con = this.obtenerConexion();
            id_competencia = competenciaVO.getId_competencia();
            id_competencia_videojuego = competenciaVO.getId_competencia_videojuego();
            id_competencia_torneo = competenciaVO.getId_competencia_torneo();
        }catch (Exception e){
            Logger.getLogger(competenciaDAO.class.getName()).log(Level.SEVERE,null,e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean consultarRegistro() {
        try{
            sql = "call spr_competencia();";
            puente = con.prepareStatement(sql);
            mensajero = puente.executeQuery();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(competenciaDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(competenciaDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }

    @Override
    public boolean actualizarRegistro() {
        try{
            sql = "update competencia set  _categoria_videojuego = ? where id_categoria_videojuego = ?";
            puente = con.prepareStatement(sql);
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
            sql = "delete from competencia where id_competencia = ?";
            puente = con.prepareStatement(sql);
            puente.setString(1,id_competencia);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(competenciaDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(competenciaDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }
    
    public ArrayList <competenciaVO>listar(){
        ArrayList <competenciaVO>listacompetencia = new ArrayList<competenciaVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "call spr_competencia();"; 
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                competenciaVO competenciaVO = new  competenciaVO (mensajero.getString(1),mensajero.getString(2),mensajero.getString(2));
                listacompetencia.add(competenciaVO);
            }
        }catch (SQLException e){
            Logger.getLogger(competenciaDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(competenciaDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return listacompetencia;
    }
    
     public competenciaVO consultarcompetenciae(String id_competencia){
        competenciaVO competenciaVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from competencia where id_competencia= ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, id_competencia); 
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                competenciaVO = new competenciaVO(id_competencia,mensajero.getString(2),mensajero.getString(3));
            }
        }catch (SQLException e){
            Logger.getLogger(competenciaDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(competenciaDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return competenciaVO;
    }
}