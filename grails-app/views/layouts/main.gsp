<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <g:javascript library="jquery" plugin="jquery" />
    <title><g:layoutTitle default="Grails"/></title>
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
    <g:layoutHead/>
</head>
<body>

<% if(session.getValue("usuarioId") == null){ %>
<div class="container">
    <div class="row">
        <div id="menu" class="col-md-12">
            <nav class="navbar navbar-inverse navbar-default navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/SalaoByMe">SalaoBy.me</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="http://www.jquery2dotnet.com">Home</a></li>
                        <li><a href="Pesquisar">Pesquisar</a></li>
                        <li><a href="/Sobre">Sobre</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="Usuario/Create">Cadastrar</a></li>
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown">Entrar <b class="caret"></b></a>
                            <ul class="dropdown-menu" style="padding: 15px;min-width: 250px;">
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <g:form class="form" role="form" method="post" controller="Usuario" action="login" accept-charset="UTF-8">
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputEmail2">E-mail</label>
                                                    <input type="email" class="form-control" id="email" name="email" placeholder="e-mail" required>
                                                </div>
                                                <div class="form-group">
                                                    <label class="sr-only" for="exampleInputPassword2">Senha</label>
                                                    <input type="password" class="form-control" id="senha" name="senha" placeholder="******" required>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox"> Lembrar-me
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <button type="submit" onclick="javascript: verificaSession(<%out.print(session.getAttribute("usuarioId"))%>)" class="btn btn-success btn-block">Entrar</button>
                                                    ${flash.message}
                                                </div>
                                            </g:form>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <strong><a href="Usuario/EsqueceuSenha" class="btn">Esqueci minha senha</a></strong>
                                </li>
                            </ul>
                        </li>
                    </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
  </div>
</div>
   <%}else{%>
      <div class="container">
            <div class="row">
        <div id="menu2" class="col-md-12">
            <nav class="navbar navbar-inverse navbar-default navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/SalaoByMe">SalaoBy.me</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="http://www.jquery2dotnet.com">Home</a></li>
                        <li><a href="Pesquisar">Pesquisar</a></li>
                        <li><a href="/Sobre">Sobre</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="" class="dropdown-toggle" data-toggle="dropdown"><%out.print(session.getAttribute("usuarioNome"))%> <b class="caret"></b></a>
                            <ul class="dropdown-menu" style="padding: 15px;min-width: 250px;">
                                <li>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <a href="Usuario/MeuPerfil">Configurações</a>
                                                <g:form class="form" role="form" method="post" controller="Usuario" action="sair" accept-charset="UTF-8" id="login-nav">
                                                    <input type="submit" value="Sair" class="btn btn-danger" />
                                                    ${flash.message}
                                                </g:form>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
        </div><!-- /.navbar-collapse -->
    </nav>
  </div>
  </div>
                <% }%>
    <script>
        $(document).ready(function(){
            //Handles menu drop down
            $('.dropdown-menu').find('form').click(function (e) {
                e.stopPropagation();
            });

            /*debugger;
            verificaSession()*/

        });

    </script>
     <script type="text/javascript">



     function verificaSession(id){
         debugger;
         var undefined = "erro";
         if(id != 0){
             //if(undefined === "erro"){
                 jQuery("#menu").fadeIn()
                 jQuery("#menu2").fadeOut()
             //}
         }else{
             jQuery("#menu2").fadeIn();
             jQuery("#menu").fadeOut();
         }
     }
     </script>

    <style>

    .esconderMenu{
        display: none;
    }
    .aparecerMenu{
        display: inline;
    }

    body { margin-top:30px; }
    #login-nav input { margin-bottom: 15px; }

    </style>


<div class="container">
    </div>
<g:layoutBody/>
</div>
<div style="width: 100%; background-color: #ffffff">
<div class="footer" role="contentinfo" style="background-color: #ffffff; width: 70%; padding: 0 0 0 150px">
    <footer>
        <div style="width: 30%; float:left">
            <div class="col-lg-12">
                <ul>
                    <li>Quem somos</li>
                    <li>Informações úteis - Cliente</li>
                    <li>Informações úteis - Salão</li>
                </ul>
            </div>
        </div>
        <div style="width: 10%"></div>
        <div style="width: 30%;float:left">
            <div class="col-lg-12">
                <ul>
                    <li>Cadastre seu salão</li>
                    <li>Seja um revendendor</li>
                    <li>Fale conosco</li>
                </ul>
            </div>
        </div>
        <div style="width: 10%"></div>
        <div style="width: 30%; float:left">
            <div class="col-lg-12">
                <span> <a href="https://www.facebook.com/salaobyme"><img src="images/face.jpg" /> Facebook </a></span><br>
                <span> <a href="http://twitter.com/SalaoByMe"> <img src=images/twitter.jpg>  Twitter </a></span><br>
                <span> <a href="http://www.pinterest.com/salaobyme/"> <img src=images/pinte.jpg>  Pinterest</a> </span>
            </div>
        </div>
    </footer>
</div>
</div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>
