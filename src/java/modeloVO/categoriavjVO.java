package modeloVO;
public class categoriavjVO {
    private String id_catvj, nombre_catvj;

     public categoriavjVO() {
    }
     
    public categoriavjVO(String id_catvj, String nombre_catvj) {
        this.id_catvj = id_catvj;
        this.nombre_catvj = nombre_catvj;
    }
    public categoriavjVO(String nombre_catvj) {
        this.nombre_catvj = nombre_catvj;
    }

    public String getId_catvj() {
        return id_catvj;
    }

    public void setId_catvj(String id_catvj) {
        this.id_catvj = id_catvj;
    }

    public String getNombre_catvj() {
        return nombre_catvj;
    }

    public void setNombre_catvj(String nombre_catvj) {
        this.nombre_catvj = nombre_catvj;
    }
    
}
