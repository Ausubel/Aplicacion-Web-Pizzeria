/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import BD.conexion;
import Model.UsuarioModel;
import java.sql.ResultSet;

/**
 *
 * @author intel
 */
public class LoginDAO {
    int rspta = 0;
    String sql = "";
    ResultSet rs = null;
    conexion cn = new conexion();
    public int validarLogin(UsuarioModel um)throws Exception{
        sql="select count(idUser) as Cantidad from `user` where loginEmail='"+um.getLoginEmail()+"' and password='"+um.getPassword()+"'";
        rs = cn.ejecutarConsulta(sql);
        while(rs.next()){
            rspta=rs.getInt("Cantidad");
        }
        return rspta;
    }
}
