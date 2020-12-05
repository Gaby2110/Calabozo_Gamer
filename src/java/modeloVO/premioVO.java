package modeloVO;
public class premioVO {
    private String id_premio, descripcion_premio,urlimagen,ronda;

    public premioVO() {
    }

    public premioVO(String ronda) {
        this.ronda = ronda;
    }

    public String getRonda() {
        return ronda;
    }

    public void setRonda(String ronda) {
        this.ronda = ronda;
    }
    
    
    public premioVO(String id_premio, String descripcion_premio, String urlimagen) {
        this.id_premio = id_premio;
        this.descripcion_premio = descripcion_premio;
        this.urlimagen = urlimagen;
    }

    public String getId_premio() {
        return id_premio;
    }

    public void setId_premio(String id_premio) {
        this.id_premio = id_premio;
    }

    public String getDescripcion_premio() {
        return descripcion_premio;
    }

    public void setDescripcion_premio(String descripcion_premio) {
        this.descripcion_premio = descripcion_premio;
    }

    public String getUrlimagen() {
        return urlimagen;
    }

    public void setUrlimagen(String urlimagen) {
        this.urlimagen = urlimagen;
    }
    
}
