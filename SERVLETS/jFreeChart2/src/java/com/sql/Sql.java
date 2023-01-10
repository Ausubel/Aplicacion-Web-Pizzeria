package com.sql;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Sql {

    // ejecuta insert, delete, update
    static public String ejecuta(String sql) { 
        String mensaje = null;
        try {
            ConectaDB db = new ConectaDB();
            Connection cn = db.getConnection();

            if (cn == null) {
                mensaje = "No hay conexión a base de datos!";
            } else {
                Statement st = cn.createStatement();
                st.execute(sql);
                cn.close();
            }
        } catch (SQLException e) {
            mensaje = e.getMessage();
        } catch (Exception e) {
            mensaje = e.getMessage();
        }
        return mensaje;
        // returna null si Ok! sino mensaje de error
    }

    static public List consulta(String sql) { // Ejecuta Select
        List<String[]> list = new ArrayList<String[]>();
        try {
            ConectaDB db = new ConectaDB();
            Connection cn = db.getConnection();

            if (cn == null) {
                list = null;
            } else {
                Statement st = cn.createStatement();
                ResultSet rs = st.executeQuery(sql);
                ResultSetMetaData rm = rs.getMetaData();
                int numCols = rm.getColumnCount();

                // Toma los títulos de las columnas
                String[] titCols = new String[numCols];
                for (int i = 0; i < numCols; ++i) {
                    titCols[i] = rm.getColumnName(i + 1);
                }
                // la fila 0 lleva los títulos de columnas
                list.add(titCols);
                // toma las filas de la consulta
                while (rs.next()) {
                    String[] fila = new String[numCols];

                    for (int i = 0; i < numCols; i++) {
                        fila[i] = rs.getString(i + 1);
                    }
                    list.add(fila);
                }
                cn.close();
            }

        } catch (SQLException e) {
            list = null;
        } catch (Exception e) {
            list = null;
        }
        return list;    // returna null si falló
    }
}


