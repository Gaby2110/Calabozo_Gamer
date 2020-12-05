package modeloVO;
public class c_usuVO {
    private String id_competencia_usuario, id_competencia_torneo_fk,id_competencia_usuario_fk;

    public c_usuVO() {
    }
    
    public c_usuVO(String id_competencia_usuario_fk) {
        this.id_competencia_usuario_fk = id_competencia_usuario_fk;
    }
    public c_usuVO(String id_competencia_usuario_fk,String id_competencia_torneo_fk) {
        this.id_competencia_usuario_fk = id_competencia_usuario_fk;
        this.id_competencia_torneo_fk = id_competencia_torneo_fk;
    }
    public c_usuVO(String id_competencia_usuario, String id_competencia_torneo_fk, String id_competencia_usuario_fk) {
        this.id_competencia_usuario = id_competencia_usuario;
        this.id_competencia_torneo_fk = id_competencia_torneo_fk;
        this.id_competencia_usuario_fk = id_competencia_usuario_fk;
    }

    public String getId_competencia_usuario() {
        return id_competencia_usuario;
    }

    public void setId_competencia_usuario(String id_competencia_usuario) {
        this.id_competencia_usuario = id_competencia_usuario;
    }

    public String getId_competencia_torneo_fk() {
        return id_competencia_torneo_fk;
    }

    public void setId_competencia_torneo_fk(String id_competencia_torneo_fk) {
        this.id_competencia_torneo_fk = id_competencia_torneo_fk;
    }

    public String getId_competencia_usuario_fk() {
        return id_competencia_usuario_fk;
    }

    public void setId_competencia_usuario_fk(String id_competencia_usuario_fk) {
        this.id_competencia_usuario_fk = id_competencia_usuario_fk;
    }
}
