<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="MODEL.Jogo"%>
<%
    DAOUsuario dsu = new DAOUsuario();
    Jogo game = new Jogo();
    game.setIdJogo(Integer.parseInt( request.getParameter("id")));
    game.setTitulo(request.getParameter("titulo"));
    if(dsu.inserirJogo(game)){
        out.print("<script>setTimeout(function(){window.alert('JOGO INSERIDO NA SUA CONTA')},10)</script>");
        
        out.print("<script>setTimeout(function(){window.location.replace('catalogo.jsp')},20)</script>");
    }else{
        out.print("<script>setTimeout(function(){window.alert('VOCÊ JA TEM ESSE JOGO')},10)</script>");
        out.print("<script>setTimeout(function(){window.location.replace('catalogo.jsp')},20)</script>");
       
    }
    
    %>