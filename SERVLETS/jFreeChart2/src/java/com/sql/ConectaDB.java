package com.sql;

import java.sql.Connection;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NameNotFoundException;
import javax.sql.DataSource;

public class ConectaDB {

    private String datasource = "jdbc/peru_MySQL"; // datasource

    public Connection getConnection() {
        Connection cn = null;

        try {
            Context contextoInicial = new InitialContext();
            Context contexto =
                    (Context) contextoInicial.lookup(
                    "java:comp/env");
            DataSource fuenteDatos =
                    (DataSource) contexto.lookup(datasource);
            cn = fuenteDatos.getConnection();

        } catch (NameNotFoundException e) {
            cn = null;
        } catch (Exception e) {
            cn = null;
        }

        return cn;
    }
}
