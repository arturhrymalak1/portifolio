
package br.edu.qi.conexaoBD;

import java.sql.*;
import javax.swing.JOptionPane;

public class ConexaoBD {
    private Connection conexao = null;

    public Connection getConexao() throws ClassNotFoundException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/dbfittracker?user=root&password=";
            this.conexao = DriverManager.getConnection(url);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Deu merda na classe ConexaoBD e no metodo getConexao()");
        }
        return this.conexao;
    }
    
    
}
