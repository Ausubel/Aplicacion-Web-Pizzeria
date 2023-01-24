package Model;

public class Usuario {

    // Columnas User / LOGIN
    private String loginEmail;
    private String loginPassword;
    
    // Columnas Customer
    private int dni;
    private String nameCustomer;
    private String lastNameCustomer;
    private String address;
    private String phone;

    public Usuario() {
    }

    public Usuario(String loginEmail, String loginPassword, int dni, String nameCustomer, String lastNameCustomer, String address, String phone) {
        this.loginEmail = loginEmail;
        this.loginPassword = loginPassword;
        this.dni = dni;
        this.nameCustomer = nameCustomer;
        this.lastNameCustomer = lastNameCustomer;
        this.address = address;
        this.phone = phone;
    }

    public String getLoginEmail() {
        return loginEmail;
    }

    public void setLoginEmail(String loginEmail) {
        this.loginEmail = loginEmail;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getNameCustomer() {
        return nameCustomer;
    }

    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }

    public String getLastNameCustomer() {
        return lastNameCustomer;
    }

    public void setLastNameCustomer(String lastNameCustomer) {
        this.lastNameCustomer = lastNameCustomer;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
}
