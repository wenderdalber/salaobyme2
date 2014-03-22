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

        .espaco{
            width: 100%;
            height: 10px;
        }

        #divSaloes{
            width: 100%;
            height: auto;
            background-color: #e4e0e0;
        }

        .img{
            width: 50%;
            height: 50%;
        }

        .divImg{
            width: 20%;
            height: auto;
            float: left;
        }
        .divS{
            width: 70%;
            height: auto;
            float: left;
        }
        .espacoImg{
            width: 10%;
            height: auto;
            float:left;
        }
    </style>

    <script type="text/javascript">

        function abre(id){
            jQuery("#divSalao").fadeIn()
                ${remoteFunction(controller: 'Pesquisar', action: 'buscarServicos', update: 'divSalao', params: ['id=' + id])}
        }
        function fecha(){
            jQuery("#divSalao").fadeOut()
        }
        function listarServicos(){
            ${remoteFunction(controller: 'Pesquisar', action: 'buscarServicos', update: 'divSalao')}
        }
    </script>


</head>

<body>

<div class="pesquisa">
    <div style="height: 50px">


    </div>

    <g:form method="GET" action="buscar">

        <div class="form-group col-sm-10">
            <input type="text" class="form-control" id="pesquisar" name="pesquisar" placeholder="Salões, serviços ou endereços">
        </div>
        <button type="submit" class="btn btn-warning">Buscar</button>

    </g:form>
    </div>

</div>

    <div class="container" style="background-color: beige">

        <center><h2>Resultado da Pesquisa para: <strong>${params.pesquisar}</strong></h2></center>




    <div id="divResultados">


        <div id="divSaloes">

        <g:if test="${saloes != null}">
            <g:each in="${saloes}" var="salao">
                <div class="divImg"><img src="../images/01.jpg" class="img" /></div>
                <div class="espacoImg"></div>
                <div class="divS"><h2><label>Salão: ${salao.nome} </label></h2>
                <div>${salao.descricao}</div><br>
                <strong>Endereço: </strong> ${salao.endereco.logradouro}<br>
                <strong>Bairro: </strong>${salao.endereco.bairro} <br>
                <strong>Cidade: </strong>${salao.endereco.cidade} <strong>Estado: </strong>${salao.endereco.estado} <strong>CEP: </strong>${salao.endereco.cep}
                <input type="text" id="id" value="${salao.id}" hidden="hidden"><br>
                <g:formRemote method="post" name="listaSaloes" url="[controller: 'pesquisar', action: 'buscarServicos']" update="divSalao">

                        <input type="text" name="id" value="${salao.id}" hidden="hidden">
                        <input type="submit" class="btn btn-warning" value="busca">

                </g:formRemote>
                <a href="javascript: abre(${salao.id})"><strong>Servicos do Salão</strong></a></div>

            </g:each>
        </g:if>
        <g:else>
            <h2>Sem resultados...</h2>
        </g:else>
        </div>
        <div class="espaco"></div>

        <div id="divSalao">

            <a href="javascript: fecha()">Fechar</a>

            <g:each in="${saloes}">



            </g:each>

        </div>

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