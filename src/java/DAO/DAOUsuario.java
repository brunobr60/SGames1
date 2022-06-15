package DAO;

import MODEL.Jogo;
import MODEL.Usuario;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DAOUsuario {
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Jogo> lis = new ArrayList<>();
    
    public DAOUsuario(){
        conn = new Conexao().getConexao();
    }
    public ResultSet validarUsuario(Usuario usuario){
        try{
            String sql = "SELECT * FROM usuario WHERE email=? and senha=?";
            stmt= conn.prepareStatement(sql); 
            stmt.setString(1, usuario.getEmail());
            stmt.setString(2, usuario.getSenha());
            rs= stmt.executeQuery();
            return rs;
        }catch(Exception erro){
                throw new RuntimeException("Erro metodo validarUsuario:"+erro.getMessage());
        }
    }
    public void inserirUsuario(Usuario usuario){
        try{
            String sql = "INSERT INTO usuario (nome, email, senha, cpf) VALUES (?,?,?,?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getSenha());
            stmt.setString(4, usuario.getCpf());
            
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro DAO Inserir Usuário: "+erro.getMessage());
        }
    }
    public boolean retornarValidacao(int idJogo){
        try{
            Usuario usuario = new Usuario();
            String sql = "SELECT idUsuario FROM usuario WHERE email=?";
            stmt= conn.prepareStatement(sql);
            stmt.setString(1, usuario.getEmailDeConexao());
            rs= stmt.executeQuery();
            String rtr = null ;
            if(rs.next()){
                 rtr = rs.getString("idUsuario");
            }
            
        
            String sqla = "SELECT * FROM jogos WHERE idUsuario=? and idJogo=? ";
            stmt= conn.prepareStatement(sqla); 
            stmt.setString(1,rtr);
            stmt.setInt(2,idJogo);
            rs= stmt.executeQuery();
            if(rs.next()){
                return false;
            }else{
                return true;
            }
        
    }catch(Exception erro){
            throw new RuntimeException("Erro DAO retornar Validação: "+erro.getMessage());
        }
    }
    public boolean inserirJogo(Jogo jogo){
        try{
            if(retornarValidacao(jogo.getIdJogo())){
            Usuario usuario = new Usuario();
            String sql = "INSERT INTO jogos (idUsuario,titulo,preço,idJogo) VALUES ((SELECT idUsuario FROM usuario WHERE email=?),?,'Gratis',?)";
            
            stmt = conn.prepareStatement(sql);
            stmt.setString(1,usuario.getEmailDeConexao());
            stmt.setString(2,jogo.getTitulo());
            stmt.setInt(3, jogo.getIdJogo());
            
            stmt.execute();
            stmt.close();
            
            
            return true;
            }else{
                return false;
            }
            
    }catch(Exception erro){
            throw new RuntimeException("Erro DAO inserir jogo: "+erro.getMessage());
        }
    }
    public ArrayList<Jogo> listarjogos(){
        String sql = "SELECT * FROM jogos";
        try{
           st = conn.createStatement();
           rs = st.executeQuery(sql);
           while(rs.next()){
               Usuario usuario = new Usuario();
               Jogo jogo = new Jogo();
               jogo.setIdUsuario(rs.getInt("iDUsuario"));
               jogo.setTitulo(rs.getString("titulo"));
               jogo.setPreco(rs.getString("preço"));
               lis.add(jogo);
           }
        }catch(Exception erro){
            throw new RuntimeException("Erro método listar Todos Usuários: "+erro.getMessage());
        }
        return lis;
    }
}
