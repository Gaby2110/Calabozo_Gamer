package modeloDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloVO.vid_catVO;
import util.conexion;

public class vid_catDAO extends conexion {
    private Connection con = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    private String sql;
    private boolean operacion = false;
    
    private String id_videojuego = "";
    private String nombre_videojuego = "";
    private String id_catvj = "";
    private String nombre_catvj = "";
    
    public vid_catDAO() {
    }
    
    public vid_catDAO(vid_catVO vid_catVO){
        super(); 
        try{
            con = this.obtenerConexion();
            id_videojuego = vid_catVO.getId_videojuego();
            nombre_videojuego = vid_catVO.getNombre_videojuego();
            id_catvj = vid_catVO.getId_catvj();
            nombre_catvj = vid_catVO.getNombre_catvj();
            
        }catch (Exception e){
            Logger.getLogger(vid_catDAO.class.getName()).log(Level.SEVERE,null,e);
        }
    }
    public ArrayList <vid_catVO>listar(){
        ArrayList <vid_catVO>listavid_cat = new ArrayList<vid_catVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "call spr_vidcat()"; 
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                vid_catVO vid_catVO = new  vid_catVO (mensajero.getString(1),mensajero.getString(2));
                listavid_cat.add(vid_catVO);
            }
        }catch (SQLException e){
            Logger.getLogger(vid_catDAO.class.getName()).log(Level.SEVERE,null,e); 
        }
        return listavid_cat;
    }
}
