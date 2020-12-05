package modeloVO;
public class encu_jugVO {
    private String id,id_jugador,resultado,id_encuentro_fk,ronda,id_torneo_encuentro;

    public encu_jugVO(String resultado,String id_jugador, String id_torneo_encuentro,String ronda) {
        this.resultado = resultado;
        this.id_jugador = id_jugador;
        this.id_torneo_encuentro = id_torneo_encuentro;
        this.ronda = ronda;
    }

    public String getId_torneo_encuentro() {
        return id_torneo_encuentro;
    }

    public void setId_torneo_encuentro(String id_torneo_encuentro) {
        this.id_torneo_encuentro = id_torneo_encuentro;
    }

    public String getRonda() {
        return ronda;
    }

    public void setRonda(String ronda) {
        this.ronda = ronda;
    }

    public encu_jugVO(String id_jugador) {
        this.id_jugador = id_jugador;
    }

    public encu_jugVO() {
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId_jugador() {
        return id_jugador;
    }

    public void setId_jugador(String id_jugador) {
        this.id_jugador = id_jugador;
    }

    public String getResultado() {
        return resultado;
    }

    public void setResultado(String resultado) {
        this.resultado = resultado;
    }

    public String getId_encuentro_fk() {
        return id_encuentro_fk;
    }

    public void setId_encuentro_fk(String id_encuentro_fk) {
        this.id_encuentro_fk = id_encuentro_fk;
    }
  
}
