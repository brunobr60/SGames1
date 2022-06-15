<%-- 
    Document   : Login
    Created on : 11/05/2022, 19:51:14
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela de Login</title>
    <style>
        body{
            background: url('imagens/glitch-effect-on-a-black-background.jpg');
            background-size: 100% 100% ;
            height: 100vh;
            display: flex;
            align-items: center;
            flex-direction: column;
            justify-content: space-between;
            padding: 0;
            margin: 0;
            color: silver;
        }
        .caixaLogin{
            background-color: rgba(0,0,0,0.7);
            width: 300px;
            padding: 40px;
            border-radius: 50px;
            box-shadow: 0 20px 20px;
        }
        .caixaLogin h2{
            color: #fff;
            text-align: center;
            margin: 20px 0 30px;
            font-family: Arial;
        }
        .caixaLogin .campo input{
            width: 100%;
            padding: 10px;
            font-size: 15px;
            background: transparent;
            color: #fff;
            letter-spacing: 2px;
            border: none;
            outline: none;
            border-bottom: 1px solid #fff;
            margin-bottom: 30px;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;

        }
        .caixaLogin .campo
        {
            position: relative;
            
        }
        .caixaLogin .campo label{
            position: absolute;
            top:0;
            left: 0;
            padding: 10px 0;
            font-size: 16px;
            color: #fff;
            font-family: Arial;
            pointer-events: none;
            transition: 0.5s;

        }
        .caixaLogin .campo input:focus~label,
        .caixaLogin .campo input:valid~label {
            top: -20px;
            left: 0;
            color: #fff; 
        }
        #checkbox2 {
            color: #fff;
            font-family: arial;
            font-size: 12px;
        }
        .caixaLogin button {
            width: 100%;
            height: 40px;
            border: none;
            outline: none;
            color: rgb(0, 0, 0);
            background-color: silver;
            padding: 10px 20px;
            font-size: 15px;
            cursor: pointer;
            border-radius: 5px;
        }
        #cadastro{
            font-weight: bold;
            color: #fff;
            font-family: arial;
            text-align: center;
            cursor: pointer;
        }
        .img-logo {
            background: #fff;
            width: 180px;
            height: 180px;
            left: 0;
            right: 0;
            margin: auto;
            top: -5%;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .img-logo img {
            width: 50%;
        }
        
    </style>
</head>
<body>
    <h1></h1>
    <div class="caixaLogin">
        <div class="img-logo">
            <img src ="imagens/SGames.png">
        </div>
        <h2>Login</h2>
        <form action="validarUsuario.jsp" method="POST">
            <div class="campo">
                <input type="text" name="email" required="">
                <label>Email</label>
            </div>
            <div class="campo">
                <input type="password" name="senha" required="">
                <label>Senha</label>
            </div>

            <button>Entrar</button>
            <div style="text-align: center;">
            <a href ="index.jsp">Efetuar cadastro !</p>
            </div>
        </form>
    </div>
    <div></div>
</body>
</html>
