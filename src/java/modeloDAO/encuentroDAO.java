package modeloDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.c_usuVO;
import modeloVO.encuentroVO;
import modeloVO.premioVO;
import modeloVO.torneoVO;
import util.conexion;
import util.crud;

public class encuentroDAO extends conexion implements crud{
    private Connection con = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    private String sql;
    private boolean operacion = false;
    
    private String id_encuentro = "";
    private String fecha_encuentro = "";
    private String ubicacion_encuentro = "";
    private String id_torneo_encuentro = "";
    private String Numero_participantes_torneo = "";
    private String id_torneo_usuario = "";
    private String ronda = "";
    
    public encuentroDAO() {
    }
    
    public encuentroDAO(encuentroVO encuentroVO){
        super(); 
        try{
            con = this.obtenerConexion();
            id_encuentro = encuentroVO.getId_encuentro();
            fecha_encuentro = encuentroVO.getFecha_encuentro();
            ubicacion_encuentro = encuentroVO.getUbicacion_encuentro();
            id_torneo_encuentro = encuentroVO.getId_torneo_encuentro();
            ronda = encuentroVO.getRonda();
        }catch (Exception e){
            Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e);
        }
    }
    
    @Override
    public boolean agregarRegistro() {
        try{
            con = this.obtenerConexion();
            sql = "call spc_encuentro (?,?,?,?)";
            puente = con.prepareStatement(sql);
            puente.setString(1, fecha_encuentro);
            puente.setString(2, ubicacion_encuentro);
            puente.setString(3, id_torneo_encuentro);
            puente.setString(4, ronda);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion;  
    }

    @Override
    public boolean consultarRegistro() {
        try{
            sql = "call spr_encuentro ()";
            puente = con.prepareStatement(sql);
            puente.setString(1, id_encuentro);
            puente.setString(2,fecha_encuentro);
            puente.setString(3,ubicacion_encuentro);
            puente.setString(4, id_torneo_encuentro);
            mensajero = puente.executeQuery();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }

   
    @Override
    public boolean actualizarRegistro() {
        try{
            sql = "update encuentro set fecha_encuentro = ?, ubicacion_encuentro = ?,id_torneo_encuentro_fk = ? where id_encuentro = ?";
            puente = con.prepareStatement(sql);
            puente.setString(1,fecha_encuentro);
            puente.setString(2,ubicacion_encuentro);
            puente.setString(3, id_torneo_encuentro);
            puente.setString(4, id_encuentro);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }

    @Override
    public boolean eliminarRegistro() {
        try{
            sql = "delete from encuentro where id_encuentro = ?";
            puente = con.prepareStatement(sql);
            puente.setString(1,id_encuentro);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }
    
    public ArrayList <encuentroVO>listar(String id_torneo_usuario){
        ArrayList <encuentroVO>listaencuentro = new ArrayList<encuentroVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "select e.fecha_encuentro,e.ubicacion_encuentro,e.ronda,t.nombre_torneo from encuentro as e inner join torneo as t on e.id_torneo_encuentro_fk = t.id_torneo where t.id_torneo_usuario_fk="+id_torneo_usuario;
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                encuentroVO encuentroVO = new  encuentroVO (mensajero.getString(1),mensajero.getString(2),mensajero.getString(3),mensajero.getString(4));
                listaencuentro.add(encuentroVO);
            }
        }catch (SQLException e){
            Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return listaencuentro;
    }
    
    public ArrayList <premioVO>ronda(String id_torneo_usuario){
        ArrayList <premioVO>listaronda = new ArrayList<premioVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "select distinct e.ronda from encuentro as e inner join torneo as t where t.id_torneo_usuario_fk="+id_torneo_usuario+"";
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                premioVO premioVO = new  premioVO (mensajero.getString(1));
                listaronda.add(premioVO);
            }
           
        }catch (SQLException e){
            Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return listaronda;
    }
    
    public encuentroVO consultarencuentro(String id_encuentro){
        encuentroVO encuentroVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from encuentro where id_encuentro= ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, id_encuentro); 
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                encuentroVO = new encuentroVO(id_encuentro,mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5));
            }
        }catch (SQLException e){
            Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return encuentroVO;
    }
    
    public encuentroVO consultarencuentroe(String id_encuentro){
        encuentroVO encuentroVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from encuentro where id_encuentro= ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, id_encuentro); 
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                encuentroVO = new encuentroVO(id_encuentro,mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5));
            }
        }catch (SQLException e){
            Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(encuentroDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return encuentroVO;
    }    
}
