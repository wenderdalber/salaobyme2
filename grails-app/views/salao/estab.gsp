<%--
  Created by IntelliJ IDEA.
  User: WenderDalber
  Date: 19/03/14
  Time: 22:38
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-theme.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-theme.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'modern-business.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'js', file: 'bootstrap.js')}" type="text/javascript">
    <link rel="stylesheet" href="${resource(dir: 'js', file: 'modern-business.js')}" type="text/javascript">
    <script src="${resource(dir: 'js', file: 'jquery-1.11.0.js')}" ></script>
    <script src="${resource(dir: 'js', file: 'jquery-1.11.0.min.js')}" ></script>
    <title>Salão - ${salao.nome}</title>
    <meta name="layout" content="main"/>

    <style>

        .divImagem{
            width: 450px;
            height: 350px;
            float:left;
            border: 250px;
            border-color: #ffffff;
        }
        .divEspaco{
            width: 30px;
            height: 250px;
            float:left;
        }
        .divConteudo{
            width: 450px;
            height: 350px;
            float:left;
            background-color: #ffffff;
        }

        .divServico{
            width: 100%;
            height: 350px;
            float: left;
            background-color: #ffffff;
        }
        .divEspacoLateral{
            width: 100%;
            height: 20px;
            float: left;
        }

    </style>

</head>

<body>

<g:if test="${salao != null}">

    <div class="divImagem">

        <img class="img-responsive img-home-portfolio" src="../../images/02.jpg">

    </div>
    <div class="divEspaco"></div>
    <div class="divConteudo">
        <g:each in="${salao}">

            <h1>Salão: ${salao.nome}</h1><br><br>

            <p>Realize reservas online, no conforto da sua casa! É rápido e pratico. Escolha uma categoria abaixo e um serviço. Selecione o melhor horario para você e confirme sua reserva!</p>

            <p><strong>Endereço:</strong></p>
            <p>${salao.endereco.logradouro}</p>
            <p>${salao.endereco.bairro} - ${salao.endereco.cidade} - ${salao.endereco.estado}</p>

        </g:each>
    </div>
    <div class="divEspacoLateral"></div>
    <div class="divServico">
        <center><h2>Serviços ${salao.nome}:</h2><br></center>

        <g:each in="${servicos}">
            ${servicos.descricao}
        </g:each>

    </div>
</g:if>
<g:else>

    <h1>Salão não existe!</h1>

</g:else>


</body>
</html>