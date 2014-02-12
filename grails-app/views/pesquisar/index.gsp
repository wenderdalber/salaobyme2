<%--
  Created by IntelliJ IDEA.
  User: WenderDalber
  Date: 12/02/14
  Time: 00:46
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
    <link rel="stylesheet" href="${resource(dir: 'js', file: 'jquery-1.10.2.js')}" type="text/javascript">
    <link rel="stylesheet" href="${resource(dir: 'js', file: 'modern-business.js')}" type="text/javascript">
    <meta name="layout" content="main"/>
    <title>Pesquisar</title>
</head>

<body>

<div class="pesquisa">
    <div style="height: 50px">


    </div>
    <div class="input-group input-group-lg">
        <span class="input-group-addon"> <img src="images/buscarsalao.png" class="imgpesquisa"/> </span>
        <input type="text" class="form-control" placeholder="Salão, Serviços, Endereço">
    </div>
    <button class="btn btn-large btn-warning">Buscar</button>
    <div class="btn-group btn-group-lg">

    </div>

    <div>

        <h2>Resultado da Pesquisa:</h2>

    </div>

    <div id="divResultados">

        <div id="divSaloes">
            Salões a serem exibidos
        </div>
        <div id="divExpandirSalao">
            Expandir os salões
        </div>

    </div>

</div>

<!-- JavaScript -->
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/modern-business.js"></script>
</body>
</html>