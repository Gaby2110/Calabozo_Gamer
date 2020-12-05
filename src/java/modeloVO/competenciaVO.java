package modeloVO;
public class competenciaVO {
    private String id_competencia, id_competencia_videojuego,id_competencia_torneo;

     public competenciaVO() {
    }
     
    public competenciaVO(String id_competencia, String id_competencia_videojuego,String id_competencia_torneo) {
        this.id_competencia = id_competencia;
        this.id_competencia_videojuego = id_competencia_videojuego;
        this.id_competencia_torneo = id_competencia_torneo;
    }

    public String getId_competencia() {
        return id_competencia;
    }

    public void setId_competencia(String id_competencia) {
        this.id_competencia = id_competencia;
    }

    public String getId_competencia_videojuego() {
        return id_competencia_videojuego;
    }

    public void setId_competencia_videojuego(String id_competencia_videojuego) {
        this.id_competencia_videojuego = id_competencia_videojuego;
    }

    public String getId_competencia_torneo() {
        return id_competencia_torneo;
    }

    public void setId_competencia_torneo(String id_competencia_torneo) {
        this.id_competencia_torneo = id_competencia_torneo;
    }

   
    
}
