/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.OsX.dla;
import java.sql.*;


/**
 *
 * @author july6
 */
public class ModuloConexao {
    public static Connection conector(){
        
        java.sql.Connection conexao;
        
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/dbinfox";
        String user = "root";
        String password = "081828";
        
        
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
           
        } catch (ClassNotFoundException | SQLException e) {
            
        }
        return null;
    }
    
}
