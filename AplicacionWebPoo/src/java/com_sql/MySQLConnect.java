/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com_sql;

/**
 *
 * @author intel
 */
import java.sql.*;

public class MySQLConnect {
    public static void main(String[] args) {
        try {
            // Cargar el controlador JDBC
            Class.forName("com.mysql.jdbc.Driver");
            // Establecer la conexión
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost/pizza_db?characterEncoding=utf8","root","intelectus");
            // Crear una declaración
            Statement stmt = con.createStatement();
            // Ejecutar una consulta
            ResultSet rs = stmt.executeQuery("SELECT * FROM tablename");
            // Recorrer los resultados
            while (rs.next())
                System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3));
            // Cerrar la conexión
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}





