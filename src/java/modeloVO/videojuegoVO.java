package modeloVO;
public class videojuegoVO {
    private String  id_videojuego,nombre_videojuego;

    public videojuegoVO() {
    }
    
    public videojuegoVO(String nombre_videojuego) {
        this.nombre_videojuego = nombre_videojuego;
    }
    
    public videojuegoVO(String id_videojuego,String nombre_videojuego) {
        this.id_videojuego = id_videojuego;
        this.nombre_videojuego = nombre_videojuego;
    }

    public String getId_videojuego() {
        return id_videojuego;
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
