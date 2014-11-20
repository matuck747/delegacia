/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

    private static Connection conexao;
    private static String URL_CONEXAO = "jdbc:mysql://150.164.102.160/daw-aluno12";
    private static String USUARIO = "daw-aluno12";
    private static String SENHA = "daw12";

    public static Connection obtemConexao() throws SQLException {
        
        DriverManager.registerDriver(new com.mysql.jdbc.Driver());

        if (conexao == null) {
            conexao = DriverManager.getConnection(URL_CONEXAO, USUARIO, SENHA);
        }

        return conexao;
    }
}
