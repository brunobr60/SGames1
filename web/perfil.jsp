<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="MODEL.Usuario"%>
<%@page import="MODEL.Jogo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil</title>
</head>
<style>
        *{
            margin: 0;
            border: 0;
            padding: 0;
        }
        body{
            background: url('imagens/glitch-effect-on-a-black-background.jpg');
            color: #fff;
        }
        
        .img-logo img{
            background: #fff;
            width: 100px;
            height: 100px;
            left: 0;
            right: 0;
            margin:auto;
            top: -5%;
            border-radius: 50%;
            display: flex;
            align-items:left;
            justify-content: left;
        }
        nav{
            margin-left: auto;
            margin-right: auto;
        }
        header{
            background-color: #808080;
            color:#fff;
            padding: 20px;
            font-family: Arial;
            width: 15%;
            box-shadow: 2px 2px 2px 2px #000;
            margin-left: auto;
            margin-right: auto;
        }
        h2{
            font-size: 20px;
            font-family: Arial;
            margin: 0;
            padding: 5px;
            font-family: Arial;
            color: #000;
        }
        h3{
            font-size: 10px;
            font-family: Arial;
            margin: 0;
            padding-left: 5px;
            padding-bottom: 5px;
            font-family: Arial;
            color: #000;
        }
        .botao{
            font-family: Arial;
            font-size: 14px;
            text-transform: uppercase;
            font-weight: bold;
            border:none;
            padding: 15px;
            cursor: pointer;
            display: inline-block;
            text-decoration: none;
            text-align: center;
        }
        .bt{
            background-color: #DCDCDC;
            color: #808080;
        }
        #grid-container {
            background-color:#808080;
            padding: 5px;
            
        }
        .grid{
            display: grid;
            grid-template-columns: repeat(auto-fill,minmax(300px, 1fr));
            grid-gap: 1px;
            max-width: 1200px;
            margin: 0 auto;
           

        }
        .grid div{
            font-family: arial;
            text-align: center;
            font-size: 1.4rem;
            padding: 2px;

            
        } 
        .container{
            background-color: #DCDCDC;
            width: 85%;
            box-shadow:2px 2px #000;
            display: block;
            margin-right: auto;
            margin-left: auto;

        }
        .imagem-grid{
            width: 75%;
            height: 75%;
        }
        .botao{
            font-family: Arial;
            font-size: 14px;
            text-transform: uppercase;
            font-weight: bold;
            border: none;
            padding: 15px;
            cursor: pointer;
            display: inline-block;
            text-decoration: none;
            text-align: center;


        }
        .bt{
            background-color: #4F4F4F;
            color: #000;
            
        }
        .grid p{
            font-family: Arial;
            color: #000;
        }
        .grid h2{
            font-family: Arial;
            color: #000;
        }
        table{
            width: 400px;
            height: 250px;
            border-collapse: collapse;
            align-items: center;
            margin-left: auto;
            margin-right: auto;
        }
        td{
            border: 1px solid #000;
            padding: 8px;
        }
         tr{
            border: 1px solid #000;
            padding: 8px;
        }
        .tee{
            align-items: center;
            margin-left: auto;
            margin-right: auto;
            text-align: center;
        }
       
</style>
<body>
    <div class="img-logo">
        <img src="imagens/SGames.png">
    </div>
    <br>
    <header class="container" id="grid-container">
        <h2>Catalogo de Games</h2>
        <h3>Escolha por Genero</h3>
        
            <a class="botao bt" href="catalogo.jsp">Home</a>
            <a class="botao bt" href="#">Perfil</a>
            
            <%
                Usuario usuario= new  Usuario();
                out.print(usuario.getEmailDeConexao());
            %>
            
        
    </header>
    <br><br>
    <section class="container" id="grid-container">
        <br>
        <h2 class="tee">Seus jogos</h2>
        <%
                out.print("<table border='1'>");
                out.print("<tr>");
                    out.print("<th>IdUsuario</th>");
                    out.print("<th>Titulo</th>");
                    out.print("<th>Preço</th>");
                out.print("</tr>");
                DAOUsuario dst = new DAOUsuario();
                
                    ArrayList<Jogo> list = dst.listarjogos();
                    
                    for(int i = 0;i<list.size();i++){
                        out.print("<tr>");
                            out.print("<td>"+list.get(i).getIdUsuario()+"</td>");
                            out.print("<td>"+list.get(i).getTitulo()+"</td>");
                            out.print("<td>"+list.get(i).getPreco()+"</td>");
                        out.print("</tr>");
                    }
            %>
            <br>
            <br>
    </section>
</body>
</html>