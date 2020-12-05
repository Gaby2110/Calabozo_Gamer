package modeloVO;
public class torneoVO {
    private String id_torneo,nombre_torneo,numero_participantes_torneo,fecha_comienzo_torneo,fecha_fin_torneo,ubicacion_torneo,estado_torneo,id_torneo_usuario, descripcion_premio,id_competencia_videojuego_fk;

    public torneoVO() {
    }
    
    public torneoVO(String id_torneo) {
        this.id_torneo = id_torneo;
    }

    public torneoVO(String id_torneo, String nombre_torneo, String numero_participantes_torneo, String fecha_comienzo_torneo, String fecha_fin_torneo, String ubicacion_torneo, String estado_torneo, String id_torneo_usuario) {
        this.id_torneo = id_torneo;
        this.nombre_torneo = nombre_torneo;
        this.numero_participantes_torneo = numero_participantes_torneo;
        this.fecha_comienzo_torneo = fecha_comienzo_torneo;
        this.fecha_fin_torneo = fecha_fin_torneo;
        this.ubicacion_torneo = ubicacion_torneo;
        this.estado_torneo = estado_torneo;
        this.id_torneo_usuario = id_torneo_usuario;
    }

    public torneoVO(String id_torneo, String nombre_torneo, String numero_participantes_torneo, String fecha_comienzo_torneo, String fecha_fin_torneo, String ubicacion_torneo, String estado_torneo, String id_torneo_usuario, String descripcion_premio,String id_competencia_videojuego_fk) {
        this.id_torneo = id_torneo;
        this.nombre_torneo = nombre_torneo;
        this.numero_participantes_torneo = numero_participantes_torneo;
        this.fecha_comienzo_torneo = fecha_comienzo_torneo;
        this.fecha_fin_torneo = fecha_fin_torneo;
        this.ubicacion_torneo = ubicacion_torneo;
        this.estado_torneo = estado_torneo;
        this.id_torneo_usuario = id_torneo_usuario;
        this.descripcion_premio = descripcion_premio;
        this.id_competencia_videojuego_fk = id_competencia_videojuego_fk;
    }

    public String getId_competencia_videojuego_fk() {
        return id_competencia_videojuego_fk;
    }

    public void setId_competencia_videojuego_fk(String id_competencia_videojuego_fk) {
        this.id_competencia_videojuego_fk = id_competencia_videojuego_fk;
    }

    public String getDescripcion_premio() {
        return descripcion_premio;
    }

    public void setDescripcion_premio(String descripcion_premio) {
        this.descripcion_premio = descripcion_premio;
    }

    public String getId_torneo() {
        return id_torneo;
    }

    public void setId_torneo(String id_torneo) {
        this.id_torneo = id_torneo;
    }

    public String getNombre_torneo() {
        return nombre_torneo;
    }

    public void setNombre_torneo(String nombre_torneo) {
        this.nombre_torneo = nombre_torneo;
    }

    public String getNumero_participantes_torneo() {
        return numero_participantes_torneo;
    }

    public void setNumero_participantes_torneo(String numero_participantes_torneo) {
        this.numero_participantes_torneo = numero_participantes_torneo;
    }

    public String getFecha_comienzo_torneo() {
        return fecha_comienzo_torneo;
    }

    public void setFecha_comienzo_torneo(String fecha_comienzo_torneo) {
        this.fecha_comienzo_torneo = fecha_comienzo_torneo;
    }

    public String getFecha_fin_torneo() {
        return fecha_fin_torneo;
    }

    public void setFecha_fin_torneo(String fecha_fin_torneo) {
        this.fecha_fin_torneo = fecha_fin_torneo;
    }

    public String getUbicacion_torneo() {
        return ubicacion_torneo;
    }

    public void setUbicacion_torneo(String ubicacion_torneo) {
        this.ubicacion_torneo = ubicacion_torneo;
    }

    public String getEstado_torneo() {
        return estado_torneo;
    }

    public void setEstado_torneo(String estado_torneo) {
        this.estado_torneo = estado_torneo;
    }
    
    public String getId_torneo_usuario() {
        return id_torneo_usuario;
    }

    public void setId_torneo_usuario(String id_torneo_usuario) {
        this.id_torneo_usuario = id_torneo_usuario;
    }
    
}
