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
import modeloVO.premioVO;
import modeloVO.torneoVO;
import modeloVO.videojuegoVO;
import util.conexion;
import util.crud;

public class torneoDAO extends conexion implements crud {
    private Connection con = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    private String sql;
    private boolean operacion = false;
    
    private String id_torneo = "";
    private String nombre_torneo = "";
    private String numero_participantes_torneo = "";
    private String fecha_comienzo_torneo = "";
    private String fecha_fin_torneo = "";
    private String ubicacion_torneo = "";
    private String estado_torneo = "";
    private String id_torneo_usuario = "";
    private String Id_competencia = "";
    private String descripcion_premio = "";
    private String id_competencia_videojuego_fk = "";
    private String nombre_videojuego = "";
    
    public torneoDAO() {
    }
    
    public torneoDAO(torneoVO torneoVO ){
        super(); 
        try{
            con = this.obtenerConexion();
            id_torneo = torneoVO.getId_torneo();
            nombre_torneo = torneoVO.getNombre_torneo();
            numero_participantes_torneo = torneoVO.getNumero_participantes_torneo();
            fecha_comienzo_torneo = torneoVO.getFecha_comienzo_torneo();
            fecha_fin_torneo = torneoVO.getFecha_fin_torneo();
            ubicacion_torneo = torneoVO.getUbicacion_torneo();
            estado_torneo = torneoVO.getEstado_torneo();
            id_torneo_usuario = torneoVO.getId_torneo_usuario();
            descripcion_premio = torneoVO.getDescripcion_premio();
            id_competencia_videojuego_fk = torneoVO.getId_competencia_videojuego_fk();
        }catch (Exception e){
            Logger.getLogger(videojuegoDAO.class.getName()).log(Level.SEVERE,null,e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try{
            con = this.obtenerConexion();
            sql = "call spc_torneo (?,?,?,?,?,?,?)";
            puente = con.prepareStatement(sql);
            puente.setString(1, nombre_torneo);
            puente.setString(2, numero_participantes_torneo);
            puente.setString(3, fecha_comienzo_torneo);
            puente.setString(4, fecha_fin_torneo);
            puente.setString(5, ubicacion_torneo);
            puente.setString(6, "Activo");
            puente.setString(7, id_torneo_usuario);
            puente.executeUpdate();
            
            sql = "select Id_torneo from torneo where Nombre_torneo = ?"; 
            puente = con.prepareStatement(sql);
            puente.setString(1, nombre_torneo);
            mensajero = puente.executeQuery(); 
            while (mensajero.next()){
                torneoVO torneVO = new  torneoVO (mensajero.getString(1));
                sql = "call spc_premio (?,?)"; 
                puente = con.prepareStatement(sql);  
                puente.setString(1, mensajero.getString(1)); 
            }
            puente.setString(2, descripcion_premio); 
            puente.executeUpdate();  
            
            sql = "select Id_torneo from torneo where Nombre_torneo = ?"; 
            puente = con.prepareStatement(sql);
            puente.setString(1, nombre_torneo);
            mensajero = puente.executeQuery(); 
            while (mensajero.next()){
                torneoVO torneoVO = new  torneoVO (mensajero.getString(1));
                sql = "call spc_competencia (?,?)"; 
                puente = con.prepareStatement(sql);  
                puente.setString(1, mensajero.getString(1));
            }
            puente.setString(2, id_competencia_videojuego_fk); 
            puente.executeUpdate(); 
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion;   
    }

    @Override
    public boolean consultarRegistro() {
        try{
            sql = "call spr_torneo";
            puente = con.prepareStatement(sql);
            puente.setString(1, id_torneo);
            puente.setString(2,nombre_torneo);
            puente.setString(3,numero_participantes_torneo);
            puente.setString(4,fecha_comienzo_torneo);
            puente.setString(5,fecha_fin_torneo);
            puente.setString(6,ubicacion_torneo);
            puente.setString(7,estado_torneo);
            puente.setString(8,id_torneo_usuario);
            mensajero = puente.executeQuery();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }

    @Override
    public boolean actualizarRegistro() {
        try{
            sql = "call spu_torneo (?,?,?,?,?,?,?,?)";
            puente = con.prepareStatement(sql);
            puente.setString(1, id_torneo);
            puente.setString(2,nombre_torneo);
            puente.setString(3,numero_participantes_torneo);
            puente.setString(4,fecha_comienzo_torneo);
            puente.setString(5,fecha_fin_torneo);
            puente.setString(6,ubicacion_torneo);
            puente.setString(7,estado_torneo);
            puente.setString(8,id_torneo_usuario);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }

    @Override
    public boolean eliminarRegistro() {
        try{
            sql = "call spd_torneo(?)";
            puente = con.prepareStatement(sql);
            puente.setString(1,nombre_torneo);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion; 
    }
    
    public torneoVO consultartorneo(String nombre_torneo){
        torneoVO torneoVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from torneo where nombre_torneo= ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, nombre_torneo); 
            mensajero = puente.executeQuery();
            while (mensajero.next()){  
                torneoVO = new  torneoVO (mensajero.getString(1),mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),mensajero.getString(7),mensajero.getString(8));
            }
        }catch (SQLException e){
            Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return torneoVO;
    }
      
    public ArrayList <torneoVO>listar(String id_torneo_usuario){
        ArrayList <torneoVO>listatorneo = new ArrayList<torneoVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "select id_torneo,nombre_torneo,numero_participantes_torneo,fecha_comienzo_torneo,fecha_fin_torneo,ubicacion_torneo,estado_torneo,id_torneo_usuario_fk from torneo where id_torneo_usuario_fk="+id_torneo_usuario ; 
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                torneoVO torneoVO = new  torneoVO (mensajero.getString(1),mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),mensajero.getString(7),mensajero.getString(8));
                listatorneo.add(torneoVO);
            }
        }catch (SQLException e){
            Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return listatorneo;
    }
    
    public ArrayList <torneoVO>listarg(){
        ArrayList <torneoVO>listatorneo = new ArrayList<torneoVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "call spr2_torneo()"; 
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                torneoVO torneoVO = new  torneoVO (mensajero.getString(1),mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),mensajero.getString(7),mensajero.getString(8));
                listatorneo.add(torneoVO);
            }
        }catch (SQLException e){
            Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return listatorneo;
    }
    
    public torneoVO consultartorneoe(String nombre_torneo){
        torneoVO torneoVO = null;
        try{
            con = this.obtenerConexion(); 
            sql = "select * from torneo where nombre_torneo= ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, nombre_torneo); 
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                torneoVO = new  torneoVO (mensajero.getString(1),mensajero.getString(2),mensajero.getString(3),mensajero.getString(4),mensajero.getString(5),mensajero.getString(6),mensajero.getString(7),mensajero.getString(8));
            }
        }catch (SQLException e){
            Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(categoriavjDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return torneoVO;
    }
    
    public boolean inscripusu(String Id_torneo_fk,String id_usuario) {
        try{
            con = this.obtenerConexion();
            sql = "insert into competencia_usuario (id_competencia_torneo_fk,id_competencia_usuario_fk) "
            + "Select ?,? Where not exists(select * from competencia_usuario where id_competencia_torneo_fk = ? and id_competencia_usuario_fk = ?)";
            puente = con.prepareStatement(sql);
            puente.setString(1, Id_torneo_fk);
            puente.setString(2, id_usuario);
            puente.setString(3, Id_torneo_fk);
            puente.setString(4, id_usuario);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally{
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(torneoDAO.class.getName()).log(Level.SEVERE,null,e); 
            }
        }
        return operacion;   
    }
    
    
}
