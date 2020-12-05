package modeloVO;
public class usuarioVO {
    private String id_usuario, nombre_usuario, apellido_usuario, telefono_usuario, correo_usuario, clave_usuario, estado_usuario;

    public usuarioVO() {
    }
  
    public usuarioVO(String id_usuario) {
        this.id_usuario = id_usuario;
    }
    
    public usuarioVO(String id_usuario, String nombre_usuario, String apellido_usuario, String telefono_usuario, String correo_usuario, String clave_usuario) {
        this.id_usuario = id_usuario;
        this.nombre_usuario = nombre_usuario;
        this.apellido_usuario = apellido_usuario;
        this.telefono_usuario = telefono_usuario;
        this.correo_usuario = correo_usuario;
        this.clave_usuario = clave_usuario;
    }
    
    public usuarioVO(String id_usuario, String nombre_usuario, String apellido_usuario, String telefono_usuario, String correo_usuario, String clave_usuario, String estado_usuario) {
        this.id_usuario = id_usuario;
        this.nombre_usuario = nombre_usuario;
        this.apellido_usuario = apellido_usuario;
        this.telefono_usuario = telefono_usuario;
        this.correo_usuario = correo_usuario;
        this.clave_usuario = clave_usuario;
        this.estado_usuario = estado_usuario;
    }
    
    public String getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre_usuario() {
        return nombre_usuario;
    }

    public void setNombre_usuario(String nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    public String getApellido_usuario() {
        return apellido_usuario;
    }

    public void setApellido_usuario(String apellido_usuario) {
        this.apellido_usuario = apellido_usuario;
    }

    public String getTelefono_usuario() {
        return telefono_usuario;
    }

    public void setTelefono_usuario(String telefono_usuario) {
        this.telefono_usuario = telefono_usuario;
    }

    public String getCorreo_usuario() {
        return correo_usuario;
    }

    public void setCorreo_usuario(String correo_usuario) {
        this.correo_usuario = correo_usuario;
    }

    public String getClave_usuario() {
        return clave_usuario;
    }

    public void setClave_usuario(String clave_usuario) {
        this.clave_usuario = clave_usuario;
    }

    public String getEstado_usuario() {
        return estado_usuario;
    }

    public void setEstado_usuario(String estado_usuario) {
        this.estado_usuario = estado_usuario;
    }
  
}
