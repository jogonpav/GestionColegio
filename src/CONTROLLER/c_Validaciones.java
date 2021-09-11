/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLLER;

import conexion.conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @jogonpav
 */
public class c_Validaciones {
    
    public static boolean validarCampo(String tabla, String campo, String consulta) { //Permite validar que un campo no esté repetido en la base de datos (Cédula, Usuario) dentro de las tablas estudaintes, profesor y usuarios
        boolean respuesta = false;
        if (consulta.equals("")){
        } else {
            try {
                conexion cn = new conexion();
                Connection conn = cn.conectar();
                Statement stmt = conn.createStatement();
                String query = "SELECT COUNT(*) FROM "+(tabla)+" WHERE BINARY "+(campo)+" = '"+(consulta)+"'"; //Consulta que distingue entre mayusculas y minusculas
                ResultSet rs = stmt.executeQuery(query);
                while (rs.next()){
                    respuesta = (rs.getInt(1) == 1);
                }
            }catch(SQLException e){
                System.out.println(e);}
        }
        return respuesta;
    }
    
    public static boolean validarCaracteresAlfa(String campo){ //validar que todos los carácteres sean alfabeticos
        boolean respuesta = false;
        for(int i = 0; i <campo.length();i++){
            char caracter = campo.toUpperCase().charAt(i); //divide cada cadena a caracteres con charAt(i)    
            int valorASCII = (int) caracter; // convierte los caracteres a valor ASCII
            if (valorASCII != 165 && (valorASCII < 65 || valorASCII>90) && valorASCII != 32){// Compara que los caracteres alfabeticos estén dentro de la cadena
                respuesta = true;
                break;
            }
        }
        return respuesta;
    }
    
    public static boolean validarCaracteresNumericos(String entero){ //validar que todos los caracteres sean enteros entre 0 y 9
        boolean respuesta = false;
        for(int i = 0; i <entero.length();i++){
            char caracter = entero.toUpperCase().charAt(i); //divide cada cadena a caracteres con charAt(i)    
            int valorASCII = (int) caracter; // convierte los caracteres a valor ASCII
            if (valorASCII < 48 || valorASCII>57){// Compara que los caracteres sean númericos
                respuesta = true;
                break;
            }
        }
        return respuesta;
    }
    
    
    
}
