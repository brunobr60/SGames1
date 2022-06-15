<%@page import="DAO.validarCpf"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="MODEL.Usuario"%>



<%
    Usuario usuario= new Usuario();
    DAOUsuario ins = new DAOUsuario();
    
    try{
        validarCpf cp = new validarCpf();
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String cpf = request.getParameter("cpf");
        if(cp.validado(cpf)){
            usuario.setNome(nome);
        usuario.setEmail(email);
        usuario.setSenha(senha);
        usuario.setCpf(cpf);
        ins.inserirUsuario(usuario);
        usuario.setEmailDeConexao(email);
        out.print("<meta http-equiv='refresh' content='3,url=Login.jsp'>");
        }else{
            out.print("CPF INVALIDO");
        }
 
        
    }catch(Exception erro){
        throw new RuntimeException("Erro ao inserir:"+erro.getMessage());
    }
    %>
