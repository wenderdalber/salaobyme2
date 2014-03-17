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
    <script src="${resource(dir: 'js', file: 'jquery-1.11.0.js')}" ></script>
    <script src="${resource(dir: 'js', file: 'jquery-1.11.0.min.js')}" ></script>
    <link rel="stylesheet" href="${resource(dir: 'js', file: 'modern-business.js')}" type="text/javascript">

    <meta name="layout" content="main"/>
    <g:javascript library="jquery" plugin="jquery" />

    <title>Pesquisar</title>

    <style>
        #divSalao{
            width: 750px;
            height: 550px;
            position: fixed;
            top: 200px;
            left: 200px;
            background-color: #ffffff;
            padding: 15px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            z-index: 2;
        }
    </style>
    <script type="text/javascript">

        function abre(){
            jQuery("#divSalao").fadeIn()
        }
        function fecha(){
            jQuery("#divSalao").fadeOut()
        }
        function listarSaloes(){
            ${remoteFunction(controller: 'Pesquisar', action: 'buscar', update: 'divSalao')}
        }
    </script>


</head>

<body>

<div class="pesquisa">
    <div style="height: 50px">


    </div>
    
    <g:formRemote method="post" name="formBuscar" url="[controller:'Pesquisar', action:'buscar']" update="divResultado">
        <div class="form-group col-sm-10">
            <input type="text" class="form-control" id="palavra" name="palavra" placeholder="Salões, serviços ou endereços">
        </div>
        <button type="submit" class="btn btn-warning">Buscar</button>
    </g:formRemote>
    </div>

</div>

    <div>

        <h2>Resultado da Pesquisa:</h2>

    </div>

    <div id="divResultados">


        <div id="divSaloes">
            
            Salões a serem exibidos
            <a href="javascript: abre()">Dados do Salão</a>
        </div>
        <div id="divSalao">

            <a href="javascript: fecha()">Fechar</a>
        </div>

    </div>

</div>

<script type="text/javascript">
    fecha()
    listarSaloes()
</script>

<!-- JavaScript -->
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/modern-business.js"></script>
</body>
</html>