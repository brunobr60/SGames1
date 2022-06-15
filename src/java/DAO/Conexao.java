
package DAO;
import java.sql.DriverManager;
import java.sql.Connection;

public class Conexao {
    public Connection getConexao(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/sga","root","");
        }catch(Exception erro){
            throw new RuntimeException("Erro na conexão do banco de dados"+erro.getMessage());
        }
    }
}
