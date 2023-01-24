
package Model;

import java.sql.*;

public class UsuarioDAO {
    
    public boolean Registrar(Usuario usu){
        Connection con;
        Conexion cn = new Conexion();
        Statement st;
        try{
           //String sql = "INSERT INTO USUARIO VALUES('" + usu.getCuenta() + "', '" + usu.getNombre() + "', '" + usu.getContrasena() + "', '" + usu.getCorreo() + "')";
            String sql = "";
            con = cn.getConnection();
            st = con.createStatement();
            st.execute(sql);
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
            String sql = "call sp_IsUser('master@gmail.com','master');";
            String sql = "SELECT * FROM USUARIO WHERE CUENTA=? AND PASSWORD=?";
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.setString(1, usu.getCuenta());
            ps.setString(2, usu.getContrasena());
            rs = ps.executeQuery();
            while(rs.next()){
                usu.setCuenta(rs.getString("cuenta"));
                usu.setContrasena(rs.getString("password"));
                usu.setNombre(rs.getString("nombre"));
                usu.setCorreo(rs.getString("mail"));
                r += 1;
            }
            con.close();
            return r == 1;
        }catch(Exception e){
            System.out.println("Error:" + e);
            return false;
        }
    }
}
