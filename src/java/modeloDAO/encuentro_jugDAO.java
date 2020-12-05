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
import modeloVO.encu_jugVO;
import modeloVO.torneoVO;
import util.conexion;

public class encuentro_jugDAO extends conexion{
    private Connection con = null;
    private PreparedStatement puente = null;
    private ResultSet mensajero = null;
    private String sql;
    private boolean operacion = false;
    
    private String id = "";
    private String id_jugador = "";
    private String resultado = "";
    private String id_encuentro_fk = "";
    private String id_torneo_encuentro = "";
    private String ronda = "";
    private String id_competencia_torneo = "";
    
    public encuentro_jugDAO() {
    }
    
    public encuentro_jugDAO(encu_jugVO encuentro_jugVO){
        super(); 
        try{
            con = this.obtenerConexion();
            id = encuentro_jugVO.getId();
            id_jugador = encuentro_jugVO.getId_jugador();
            resultado = encuentro_jugVO.getResultado();
            id_encuentro_fk = encuentro_jugVO.getId_encuentro_fk();
            ronda = encuentro_jugVO.getRonda();
            id_torneo_encuentro = encuentro_jugVO.getId_torneo_encuentro();
        }catch (Exception e){
            Logger.getLogger(encuentro_jugDAO.class.getName()).log(Level.SEVERE,null,e);
        }
    }
    
    public ArrayList <encu_jugVO>participantes(String id_torneo_usuario){
        ArrayList <encu_jugVO>listapart = new ArrayList<encu_jugVO>();
        try{
            con = this.obtenerConexion(); 
            sql = "select distinct e.id_jugador from encuentro_jugador as e inner join torneo as t where t.id_torneo_usuario_fk="+id_torneo_usuario+"";
            puente = con.prepareStatement(sql);  
            mensajero = puente.executeQuery();
            while (mensajero.next()){
                encu_jugVO encu_jugVO = new  encu_jugVO (mensajero.getString(1));
                listapart.add(encu_jugVO);
            }
        }catch (SQLException e){
            Logger.getLogger(encuentro_jugDAO.class.getName()).log(Level.SEVERE,null,e); 
        }finally {
            try{
                this.cerrarConexion();
            }catch (SQLException e){
                Logger.getLogger(encuentro_jugDAO.class.getName()).log(Level.SEVERE,null,e);   
            }
        }
        return listapart;
    }
    
    public boolean resultadose() {
        try{
            sql = "update encuentro_jugador as ej inner join encuentro as e set ej.resultado = ? where ej.id_jugador = ? and e.id_torneo_encuentro_fk = ? and e.ronda = ?";
            puente = con.prepareStatement(sql);
            puente.setString(1,resultado);
            puente.setString(2,id_jugador);
            puente.setString(3,id_torneo_encuentro );
            puente.setString(4,ronda);
            puente.executeUpdate();
            operacion = true;
        }catch(SQLException e){
            Logger.getLogger(encuentro_jugDAO.class.getName()).log(Level.SEVERE,null,e); 
        }
        return operacion; 
    }
    
    public void listare(){
            ArrayList <c_usuVO>listaparticipantes = new ArrayList<c_usuVO>(); 
            ArrayList <encuentroVO>listaencuentro = new ArrayList<encuentroVO>(); 
            try{
                con = this.obtenerConexion(); 
                int cont = 0;
                int conta = 0;
                sql = "select distinct cu.Id_competencia_usuario_fk from competencia_usuario as cu inner join encuentro as e where cu.id_competencia_torneo_fk = ? and e.ronda = ?"; 
                puente = con.prepareStatement(sql);
                puente.setString(1, id_torneo_encuentro); 
                puente.setString(2, ronda); 
                mensajero = puente.executeQuery();
                    while (mensajero.next()){
                        c_usuVO c_usuaVO = new  c_usuVO (mensajero.getString(1));
                        listaparticipantes.add(c_usuaVO);
                    }
                Iterator <c_usuVO> iter = listaparticipantes.iterator();
                sql = "select Id_encuentro from encuentro where id_torneo_encuentro_fk = ? and ronda = ?"; 
                puente = con.prepareStatement(sql);  
                puente.setString(1, id_torneo_encuentro);
                puente.setString(2, ronda);
                mensajero = puente.executeQuery(); 
                    while (mensajero.next()){
                        encuentroVO encuentroVO = new  encuentroVO (mensajero.getString(1));
                        listaencuentro.add(encuentroVO);
                    }
                Iterator <encuentroVO> itera = listaencuentro.iterator();
                
                String jugador[] = new String[listaparticipantes.size()];
                String encuentro[] = new String[listaencuentro.size()];
                if(listaparticipantes.size()/2 == listaencuentro.size()){
                    while (iter.hasNext()) {
                        c_usuVO cusu = iter.next();
                        jugador[cont] = cusu.getId_competencia_usuario_fk();
                        cont++;
                    }   
                    while (itera.hasNext()) {
                        encuentroVO encu = itera.next();
                        encuentro[conta] = encu.getId_encuentro();
                        conta++;                        
                    }
                    int g = 0;
                    
                    if(jugador.length%2 == 0){
                        if( encuentro.length >= (jugador.length/2)){
                            
                            for(int x = 1; x <= jugador.length; x++){
                                sql = "insert into encuentro_jugador (id_jugador,id_encuentro_fk) Select ?,?\n" +
        "                       Where not exists(select * from encuentro_jugador where id_jugador = ? and id_encuentro_fk = ?)";
                                puente = con.prepareStatement(sql);
                                puente.setString(1,jugador[x-1]);
                                puente.setString(2,encuentro[g]);
                                puente.setString(3,jugador[x-1]);
                                puente.setString(4,encuentro[g]);
                                puente.executeUpdate();
                                if(x%2 == 0){
                                    g++;
                                }
                            }
                        }else{
                            System.out.println("no hay encuentros suficientes");
                        } 
                    }   
                        
                 }else{
                    System.out.println("no tienes la misma cantidad daah");
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
        }   
    
    public void listarep(){
            ArrayList <c_usuVO>listaparticipantesprin = new ArrayList<c_usuVO>(); 
            ArrayList <encuentroVO>listaencuentroprin = new ArrayList<encuentroVO>(); 
            try{
                con = this.obtenerConexion(); 
                int cont = 0;
                int conta = 0;
                sql = "select distinct ej.Id_jugador from encuentro_jugador as ej inner join encuentro as e where e.id_torneo_encuentro_fk = ? and e.ronda = ? and ej.resultado = '1'"; 
                puente = con.prepareStatement(sql);
                puente.setString(1, id_torneo_encuentro); 
                puente.setString(2, ronda);
                mensajero = puente.executeQuery();
                while (mensajero.next()){
                    c_usuVO c_usuaVO = new  c_usuVO (mensajero.getString(1));
                    listaparticipantesprin.add(c_usuaVO);
                }
            Iterator <c_usuVO> iter = listaparticipantesprin.iterator();
            sql = "select Id_encuentro from encuentro where id_torneo_encuentro_fk = ? and ronda = ?";  
            puente = con.prepareStatement(sql);  
            puente.setString(1, id_torneo_encuentro); 
            puente.setString(2, ronda);
            mensajero = puente.executeQuery(); 
                while (mensajero.next()){
                    encuentroVO encuentroVO = new  encuentroVO (mensajero.getString(1));
                    listaencuentroprin.add(encuentroVO);
                }
            Iterator <encuentroVO> itera = listaencuentroprin.iterator();
            String jugador[] = new String[listaparticipantesprin.size()];
            String encuentro[] = new String[listaencuentroprin.size()];
            
            if(listaparticipantesprin.size()/2 == listaencuentroprin.size()){
                while (iter.hasNext()) {
                    c_usuVO cusu = iter.next();
                    jugador[cont] = cusu.getId_competencia_usuario_fk();
                    cont++;
                }   
                while (itera.hasNext()) {
                    encuentroVO encu = itera.next();
                    encuentro[conta] = encu.getId_encuentro();
                    conta++;                        
                }
            int g = 0;
            if(jugador.length%2 == 0){
                if( encuentro.length >= (jugador.length/2)){
                    for(int x = 1; x <= jugador.length; x++){
                        sql = "insert into encuentro_jugador (id_jugador,id_encuentro_fk) Select ?,?\n" +
"                        Where not exists(select * from encuentro_jugador where id_jugador = ? and id_encuentro_fk = ?)";
                        puente = con.prepareStatement(sql);
                        puente.setString(1,jugador[x-1]);
                        puente.setString(2,encuentro[g]);
                        puente.setString(3,jugador[x-1]);
                        puente.setString(4,encuentro[g]);
                        puente.executeUpdate();
                        if(x%2 == 0){
                            g++;
                        }
                    }
                }else{
                    System.out.println("no hay encuentros suficientes");
                } 
            }   
            }else{
                System.out.println("no tienes la misma cantidad daah");
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
    }  
}
