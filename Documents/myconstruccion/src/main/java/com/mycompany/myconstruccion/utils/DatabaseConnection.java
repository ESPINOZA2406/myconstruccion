package com.mycompany.myconstruccion.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/constructora";
    private static final String USER = "root"; // Cambia según tu configuración
    private static final String PASSWORD = ""; // Cambia según tu configuración

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
