<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Usuario"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<%
    try{
        Usuario usuario= new Usuario();
        DAOUsuario ins = new DAOUsuario();
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        if(email==null||senha==null){
            response.sendRedirect("Login.jsp");
        }else{
            usuario.setEmail(email);
            usuario.setSenha(senha);
            ResultSet ResultUsuario = ins.validarUsuario(usuario);
            if(ResultUsuario.next()){
                usuario.setEmailDeConexao(email);
                out.print("<meta http-equiv='refresh' content='2 ,url=catalogo.jsp'>");
            }else{
                out.print("usuario ou senha incorreto");
                out.print("<meta http-equiv='refresh' content='2,url=index.jsp'>");
            }
        }
    }catch(Exception erro){
        throw new RuntimeException("Erro ao fazer login:"+erro.getMessage());
    }
    %>
