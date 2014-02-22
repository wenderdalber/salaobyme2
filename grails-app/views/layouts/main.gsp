<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <g:layoutHead/>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top"  role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <a class="navbar-brand" href="/SalaoByMe">Salaoby.me</a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active"><a href="/salaobyme">Principal</a></li>
            <li><a href="Pesquisar">Pesquisar</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="Usuario/Create">Cadastrar</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <form action="authenticate" method="post" role="form">
                        <div class="form-group">
                            <label for="nome">Nome de Usuário</label>
                            <input type="text" class="form-control" id="nome" placeholder="nome de usuário">
                        </div>
                        <div class="form-group">
                            <label for="senha">Senha</label>
                            <input type="password" class="form-control" id="senha" placeholder="******">
                        </div>
                        <button type="submit" class="btn btn-primary">Entrar</button>
                    </form>
                </ul>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
</nav>
<div class="container">
<g:layoutBody/>
</div>
<div class="footer" role="contentinfo">
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <center><p><a href="http://salaoby.me"> SalaoBy.Me </a> &copy; 2014
                        <g:if test="${flash.message}"></g:if>
                </p></center>
            </div>
        </div>
    </footer>
</div>
<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
<g:javascript library="application"/>
<r:layoutResources />
</body>
</html>
