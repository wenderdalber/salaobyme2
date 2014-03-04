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
    <g:javascript library="jquery" plugin="jquery" />
    <title>Pesquisar</title>

    <style>
        #divExpandirSalao{
            position: fixed;
            top: 200px;
            left: 200px;
            background-color: #ffffff;
            padding: 15px;
        }
    </style>
    <script type="text/javascript">

        function abrirSalao(){
            JQuery("#divExpandirSalao").fadeIn;
        }
        function fecharSalao(){
            JQuery("#divExpandirSalao").fadeOut;
        }
    </script>


</head>

<body>

<div class="pesquisa">
    <div style="height: 50px">


    </div>
    <form class="form-inline" role="form">
        <div class="form-group col-sm-10">
            <input type="text" class="form-control" id="buscar" name=buscar placeholder="Salões, serviços ou endereços">
        </div>
        <button type="submit" class="btn btn-warning">Buscar</button>
    </form>

    </div>

    <div>

        <h2>Resultado da Pesquisa:</h2>

    </div>

    <div id="divResultados">

        <div id="divSaloes">
            
            Salões a serem exibidos
            <a href="javascript: abrirSalao()">Dados do Salão</a>
        </div>
        <div id="divExpandirSalao">
            
            <g:formRemote name="form" url="[controller:'pesquisar',action:'search']">

            </g:formRemote>
            
            Expandir os salões
            <a href="javascript: fecharSalao()">Fechar</a>
        </div>

    </div>

</div>

<script type="text/javascript">

    fecharSalao();

</script>

<!-- JavaScript -->
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/modern-business.js"></script>
</body>
</html>