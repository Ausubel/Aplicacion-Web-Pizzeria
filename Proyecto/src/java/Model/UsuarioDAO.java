
package Model;

import java.sql.*;

public class UsuarioDAO {
    
    public boolean Registrar(Usuario usu){
        Connection con;
        Conexion cn = new Conexion();
        Statement st;
        try{
            String sqlInsertUser = "insert into `pizza_db`.`user` (`loginEmail`,`loginPassword`,`isRoot`) VALUES ('"+usu.getLoginEmail()+"','"+usu.getLoginPassword()+"',0)";
            String sqlInsertCustomer = "insert into `pizza_db`.`customer`(`dni`,`nameCustomer`,`lastNameCustomer`,`address`,`phone`,`idUser`)VALUES("+usu.getDni()+",'"+usu.getNameCustomer()+"','"+usu.getLastNameCustomer()+"','"+usu.getAddress()+"','"+usu.getPhone()+"'";
            String sqlUpdateFK = "update customer set idUser=(select count(1) from user) where idCustomer=(select count(1) from customer)+1";
            con = cn.getConnection();
            st = con.createStatement();
            st.execute(sqlInsertUser);
            st.execute(sqlInsertCustomer);
            st.execute(sqlUpdateFK);
            con.close();
            return true;
        }catch(SQLException e){
            System.out.println("Error:" + e);
            return false;
        }
    }
    public boolean inicioSesion(Usuario usu){
        Connection con;
        Conexion cn = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        int r = 0;
        try{
            String sql = "select u.loginEmail, u.loginPassword, c.dni, c.nameCustomer, c.lastNameCustomer, c.address, c.phone from user u inner join customer c on u.idUser=c.idUser where u.loginEmail=? and u.loginPassword=?";
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            
            ps.setString(1, usu.getLoginEmail());
            ps.setString(2, usu.getLoginPassword());
            
            rs = ps.executeQuery();
            
            while(rs.next()){
                usu.setLoginEmail(rs.getString("loginEmail"));
                usu.setLoginPassword(rs.getString("loginPassword"));
                usu.setDni(Integer.parseInt(rs.getString("dni")));
                usu.setNameCustomer(rs.getString("nameCustomer"));
                usu.setLastNameCustomer(rs.getString("lastNameCustomer"));
                usu.setAddress(rs.getString("address"));
                usu.setPhone(rs.getString("phone"));
                r += 1;
            }
            con.close();
            return r == 1;
        }catch(NumberFormatException | SQLException e){
            System.out.println("Error:" + e);
            return false;
        }
    }
}
