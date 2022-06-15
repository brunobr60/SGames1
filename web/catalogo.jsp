<%@page import="MODEL.Usuario"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalogo de Jogos</title>
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
        .navega{
            margin-left: auto;
            margin-right: auto;
            width: 40%;
            padding-left: 380px;
        }
    </style>
</head>
<body>
    <div class="img-logo">
        <img src="imagens/SGames.png">
    </div>
    <br>
    <header class="container" id="grid-container">
        <h2>Catalogo de Games</h2>
        <h3>Escolha por Genero</h3>
        
            <a class="botao bt" href="#">Home</a>
            <a class="botao bt" href="perfil.jsp">Perfil</a>
            
            <%
                Usuario usuario= new  Usuario();
                out.print(usuario.getEmailDeConexao());
            %>
            
        
    </header>
    <br><br>
    <section class="container" id="grid-container">
        <section class="container" id="grid-container">
            <div class="grid">
                <div>
                    <h2>Counter-Strike Global Offensive</h2>
                    <img class="imagem-grid" src="imagens/csgo.jpg">
                    <p>R$ Gratis</p>
                    <button class="botao bt"><a href="validarJogo.jsp?id=1&titulo='Counter-Strike Global Offensive'">ADQUIRA JÁ </a> </button>
                </div>
                
                <div>
                    <h2>Battlelfield 2042</h2>
                    <img class="imagem-grid" src="imagens/Battlefield_2042_capa.jpg">
                    <p>R$ Gratis</p>
                    <button class="botao bt"><a href="validarJogo.jsp?id=2&titulo='Battlelfield 2042'">ADQUIRA JÁ </a> </button>
                </div>
                <div>
                    <h2>GTA 5</h2>
                    <img class="imagem-grid" src="imagens/gta5.jpg">
                    <p>R$ Gratis</p>
                    <button class="botao bt"><a href="validarJogo.jsp?id=3&titulo='GTA 5'">ADQUIRA JÁ </a> </button>
                </div>
                <div>
                    <h2>FIFA 22</h2>
                    <img class="imagem-grid" src="imagens/FIFA-22.jpg">
                    <p>R$ Gratis</p>
                    <button class="botao bt"><a href="validarJogo.jsp?id=4&titulo='FIFA 22'">ADQUIRA JÁ </a> </button>
                </div>
                <div>
                    <h2>COD-IW</h2>
                    <img class="imagem-grid" src="imagens/COD-IW.jpeg">
                    <p>R$ Gratis</p>
                    <button class="botao bt"><a href="validarJogo.jsp?id=5&titulo='COD-IW'">ADQUIRA JÁ </a> </button>
                </div>
                <div>
                    <h2>eFootball 2022</h2>
                    <img class="imagem-grid" src="imagens/efootball-2022_791t.jpg">
                    <p>R$ Gratis</p>
                    <button class="botao bt"><a href="validarJogo.jsp?id=6&titulo='eFootball 2022'">ADQUIRA JÁ </a> </button>
                </div>
                <div>
                    <h2>Mortal-Kombat 11</h2>
                    <img class="imagem-grid" src="imagens/mk11.jpg">
                    <p>R$ Gratis</p>
                    <button class="botao bt"><a href="validarJogo.jsp?id=7&titulo='Mortal-Kombat 11'">ADQUIRA JÁ </a> </button>
                </div>
                <div>
                    <h2>PUBG</h2>
                    <img class="imagem-grid" src="imagens/pubg.jpg">
                    <p>R$ Gratis</p>
                    <button class="botao bt"><a href="validarJogo.jsp?id=8&titulo='PUBG'">ADQUIRA JÁ </a> </button>
                </div>
                <div>
                    <h2>Elden Ring</h2>
                    <img class="imagem-grid" src="imagens/Elden_Ring_capa.jpg">
                    <p>R$ Gratis</p>
                    <button class="botao bt"><a href="validarJogo.jsp?id=9&titulo='Elden Ring'">ADQUIRA JÁ </a> </button>
                </div>
                <br>
            </div>
            
        </section>
    </section>
    
</body>
</html>