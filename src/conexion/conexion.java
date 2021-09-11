/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author @Jogonpav
 */
public class conexion {
      public static Connection conn;
      
      @SuppressWarnings("empty-statement")
      public Connection conectar(){
        try {
            String bd = "db_reto5(final)";
            String direccion="jdbc:mysql://localhost:3306/";
            String user="root";
            String password="12345";
            Class.forName("com.mysql.jdbc.Driver");
            String databaseURL = direccion + bd;
            conn = java.sql.DriverManager.getConnection(databaseURL, user,password);
            //System.out.println("conectó");             
        } catch (SQLException ex) {
             System.out.println("" + ex);
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            System.out.println("" + ex);
              Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
          }
        return conn;
    }

}  

