package modeloVO;
public class rolVO {
   private String id_rol, nombre_rol; 
   
   public rolVO() {
   }
   
   public rolVO(String nombre_rol){
       this.nombre_rol = nombre_rol;
   }
   public rolVO(String id_rol,String nombre_rol){
       this.id_rol = id_rol;
       this.nombre_rol = nombre_rol;
   }

    public String getId_rol() {
        return id_rol;
    }

    public void setId_rol(String id_rol) {
        this.id_rol = id_rol;
    }

    public String getNombre_rol() {
        return nombre_rol;
    }

    public void setNombre_rol(String nombre_rol) {
        this.nombre_rol = nombre_rol;
    }
   
}
