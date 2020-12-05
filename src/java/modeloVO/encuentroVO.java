package modeloVO;
public class encuentroVO {
    private String id_encuentro,fecha_encuentro,ubicacion_encuentro,id_torneo_encuentro,ronda;

    public encuentroVO() {
    }
    
    public encuentroVO(String id_encuentro) {
        this.id_encuentro = id_encuentro;
    }

    public encuentroVO(String ronda,String n) {
        this.ronda = ronda;
    }
    
    public encuentroVO(String id_encuentro, String fecha_encuentro, String ubicacion_encuentro, String id_torneo_encuentro,String ronda) {
        this.id_encuentro = id_encuentro;
        this.fecha_encuentro = fecha_encuentro;
        this.ubicacion_encuentro = ubicacion_encuentro;
        this.id_torneo_encuentro = id_torneo_encuentro;
        this.ronda = ronda;
    }

    public encuentroVO(String fecha_encuentro, String ubicacion_encuentro,String ronda, String id_torneo_encuentro) {
        this.fecha_encuentro = fecha_encuentro;
        this.ubicacion_encuentro = ubicacion_encuentro;
        this.ronda = ronda;
        this.id_torneo_encuentro = id_torneo_encuentro;
    }
    
    public String getRonda() {
        return ronda;
    }

    public void setRonda(String ronda) {
        this.ronda = ronda;
    }

    public String getId_encuentro() {
        return id_encuentro;
    }

    public void setId_encuentro(String id_encuentro) {
        this.id_encuentro = id_encuentro;
    }

    public String getFecha_encuentro() {
        return fecha_encuentro;
    }

    public void setFecha_encuentro(String fecha_encuentro) {
        this.fecha_encuentro = fecha_encuentro;
    }

    public String getUbicacion_encuentro() {
        return ubicacion_encuentro;
    }

    public void setUbicacion_encuentro(String ubicacion_encuentro) {
        this.ubicacion_encuentro = ubicacion_encuentro;
    }

    public String getId_torneo_encuentro() {
        return id_torneo_encuentro;
    }

    public void setId_torneo_encuentro(String id_torneo_encuentro) {
        this.id_torneo_encuentro = id_torneo_encuentro;
    }
}
