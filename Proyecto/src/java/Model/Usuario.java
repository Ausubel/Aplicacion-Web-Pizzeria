
package Model;

public class Usuario {
    private String cuenta;
    private String nombre;
    private String contrasena;
    private String correo;

    public Usuario() {
    }

    public Usuario(String cuenta, String nombre, String contrasena, String correo) {
        this.cuenta = cuenta;
        this.nombre = nombre;
        this.contrasena = contrasena;
        this.correo = correo;
    }

    public String getCuenta() {
        return cuenta;
    }

    public void setCuenta(String cuenta) {
        this.cuenta = cuenta;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
    
}
