package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class conexion {

    public static PreparedStatement prepareStatement(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public String driver,bd,user,password,urlbd;
    public Connection con;
    
    public conexion(){
        driver="com.mysql.jdbc.Driver";
        bd="cg";
        user="root";
        password="";
        urlbd="jdbc:mysql://localhost:3306/"+bd;
       try{
           Class.forName(driver).newInstance();
           con=DriverManager.getConnection(urlbd,user,password);
           System.out.println("Conexion correcta");
       }catch(Exception e){
           System.out.println("Error al conectarse"+e);
         }
       }
    public Connection obtenerConexion(){
        return con;
       }
    public Connection cerrarConexion() throws SQLException{
        con.close();
        con = null;
        return con;
    }
    public static void main (String[]args){
        new conexion();
    }
}
