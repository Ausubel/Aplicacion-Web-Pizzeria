package Model;

import java.sql.*;

public class UsuarioDAO {

    public boolean Registrar(Usuario usu) {
        Connection con;
        Conexion cn = new Conexion();
        try {
            con = cn.getConnection();
            String sql1 = "insert into `pizza_db`.`user` (`loginEmail`,`loginPassword`) VALUES (?,?)";
            PreparedStatement ps1 = con.prepareStatement(sql1);
            ps1.setString(1, usu.getLoginEmail());
            ps1.setString(2, usu.getLoginPassword());
            ps1.executeUpdate();

            String sql2 = "insert into `pizza_db`.`customer`(`dni`,`nameCustomer`,`lastNameCustomer`,`address`,`phone`,idUser) VALUES (?,?,?,?,?,(SELECT MAX(idUser) FROM user))";
            PreparedStatement ps2 = con.prepareStatement(sql2);
            ps2.setString(1, String.valueOf(usu.getDni()));
            ps2.setString(2, usu.getNameCustomer());
            ps2.setString(3, usu.getLastNameCustomer());
            ps2.setString(4, usu.getAddress());
            ps2.setString(5, usu.getPhone());
            ps2.executeUpdate();

            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("Error:" + e);
            return false;
        }
    }

    public int inicioSesion(Usuario usu) {
        Connection con;
        Conexion cn = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        int r = 0;
        
        try {
            String sql = "select u.loginEmail, u.loginPassword, c.dni, c.nameCustomer, c.lastNameCustomer, c.address, c.phone, u.isRoot from user u inner join customer c on u.idUser=c.idUser where u.loginEmail=? and u.loginPassword=?";
            con = cn.getConnection();
            ps = con.prepareStatement(sql);

            ps.setString(1, usu.getLoginEmail());
            ps.setString(2, usu.getLoginPassword());

            rs = ps.executeQuery();
            int root = 0;
            while (rs.next()) {
                usu.setLoginEmail(rs.getString("loginEmail"));
                usu.setLoginPassword(rs.getString("loginPassword"));
                usu.setDni(Integer.parseInt(rs.getString("dni")));
                usu.setNameCustomer(rs.getString("nameCustomer"));
                usu.setLastNameCustomer(rs.getString("lastNameCustomer"));
                usu.setAddress(rs.getString("address"));
                usu.setPhone(rs.getString("phone"));
                root = Integer.parseInt(rs.getString("isRoot"));
                r += 1;//1
            }
            r=r+root;//1 - 2
            con.close();
        } catch (NumberFormatException | SQLException e) {
            System.out.println("Error:" + e);
            r=-1;
        }
        return r;
    }

}
