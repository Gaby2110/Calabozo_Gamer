package modeloVO;
public class vid_catVO {
    private String  id_videojuego,nombre_videojuego,id_catvj, nombre_catvj;

    public vid_catVO() {
    }

    public vid_catVO(String nombre_videojuego, String nombre_catvj) {
        this.nombre_videojuego = nombre_videojuego;
        this.nombre_catvj = nombre_catvj;
    }
  
    public String getId_videojuego() {
        return id_videojuego;
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

    public String getNombre_videojuego() {
        return nombre_videojuego;
    }

    public void setId_videojuego(String id_videojuego) {
        this.id_videojuego = id_videojuego;
    }

    public void setNombre_videojuego(String nombre_videojuego) {
        this.nombre_videojuego = nombre_videojuego;
    }
}
