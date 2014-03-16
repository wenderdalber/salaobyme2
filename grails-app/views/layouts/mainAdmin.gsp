<!DOCTYPE html>
<html lang="en">
<head>
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
<script src="${resource(dir: 'js', file: 'jquery-1.11.0.js')}" ></script>
<script src="${resource(dir: 'js', file: 'jquery-1.11.0.min.js')}" ></script>
<script src="${resource(dir: 'js', file: 'modern-business.js')}"></script>
    <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- CSS code from Bootply.com editor -->

    <style type="text/css">
    .navbar-static-top {
        margin-bottom:20px;
    }

    i {
        font-size:16px;
    }

    .nav > li > a {
        color:#787878;
    }

    footer {
        margin-top:20px;
        padding-top:20px;
        padding-bottom:20px;
        background-color:#efefef;
    }

    /* count indicator near icons */
    .nav>li .count {
        position: absolute;
        bottom: 12px;
        right: 6px;
        font-size: 10px;
        font-weight: normal;
        background: rgba(51,200,51,0.55);
        color: rgba(255,255,255,0.9);
        line-height: 1em;
        padding: 2px 4px;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        -ms-border-radius: 10px;
        -o-border-radius: 10px;
        border-radius: 10px;
    }

    .list-unstyled{
        background-color:#efefef;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        -ms-border-radius: 10px;
        -o-border-radius: 10px;
        border-radius: 10px;
    }

    /* indent 2nd level */
    .list-unstyled li > ul > li {
        margin-left:10px;
        padding:8px;
        background-color:#efefef;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        -ms-border-radius: 10px;
        -o-border-radius: 10px;
        border-radius: 10px;
    }

    .userLogado{
        width: 900px;
        height: 550px;
        background-color:#efefef;
        -webkit-border-radius: 10px;
        -moz-border-radius: 10px;
        -ms-border-radius: 10px;
        -o-border-radius: 10px;
        border-radius: 10px;
        }
    </style>


<g:layoutHead/>
</head>

<!-- HTML code from Bootply.com editor -->

<body  >

<!-- Header -->
<div id="top-nav" class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-toggle"></span>
            </button>
            <a class="navbar-brand" href="/">SalaoByMe</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">

                <li class="dropdown">
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"><i class=""></i> Admin <span class="caret"></span></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">Perfil</a></li>
                    </ul>
                </li>
                <li><a href="#"><i class=""></i> Sair</a></li>
            </ul>
        </div>
    </div><!-- /container -->
</div>
<!-- /Header -->

<!-- Main -->
<div class="container">
<div class="row">
<div class="col-md-3">
    <!-- Left column -->

    <hr>

    <ul class="list-unstyled">
        <li class="nav-header"> <a href="#" data-toggle="collapse" data-target="#userMenu">
            <h5>Configurações <i class=""></i></h5>
        </a>
            <ul class="navbar list-unstyled collapse in" id="userMenu">
                <li class="active"> <a href="/Salao/MeuSalao"><i class=""></i> Gerenciar Salão</a></li>
                <li><a href="#"><i class="/Servico/MeuServico"></i> Gerenciar Serviço <span class="badge badge-info"></span></a></li>
                <li><a href="#"><i class="/Horario/MeuHorario"></i> Gerenciar Horários</a></li>
                <li><a href="#"><i class="/Reservas/MinhasReservas"></i> Visualizar Reservas</a></li>
                <li><a href="#"><i class="/Usuario/PerfilAdmin"></i> Gerenciar Dados</a></li>
                <li><a href="#"><i class=""></i> Sair</a></li>
            </ul>
        </li>
    </ul>

    <hr>

    <hr>

    <hr>

    <hr>
</div><!-- /col-3 -->
<div class="col-md-9">


    <div id="divNaoLogado" class="userLogado">

        <h1>Você não está logado!</h1>

    </div>


<hr>

<div class="row">



    <!-- center left-->
    <div class="col-md-6">
        <div class="well">Mensagem<span class="badge pull-right">3</span></div>

        <hr>

        <div class="btn-group btn-group-justified">
            <a href="SalaoByMe/Servico/Create" class="btn btn-primary col-sm-3">
                <i class="glyphicon glyphicon-plus"></i><br>
                Criar Serviço
            </a>
            <a href="#" class="btn btn-primary col-sm-3">
                <i class="glyphicon glyphicon-cloud"></i><br>
                Salão
            </a>
            <a href="#" class="btn btn-primary col-sm-3">
                <i class="glyphicon glyphicon-cog"></i><br>
                Reservas
            </a>
            <a href="#" class="btn btn-primary col-sm-3">
                <i class="glyphicon glyphicon-question-sign"></i><br>
                Ajuda
            </a>
        </div>

        <hr>
    <g:layoutBody/>


<footer class="text-center">Desenvolvido por <a href="http://www.salaoby.me"><strong>SalaoBy.Me</strong></a>- 2014. Todos os direitos reservados</footer>





<script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


<script type='text/javascript' src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>






<!-- JavaScript jQuery code from Bootply.com editor -->

<script type='text/javascript'>

    $(document).ready(function() {

        $(".alert").addClass("in").fadeOut(4500);

        /* swap open/close side menu icons */
        $('[data-toggle=collapse]').click(function(){
            // toggle icon
            $(this).find("i").toggleClass("glyphicon-chevron-right glyphicon-chevron-down");
        });

    });

</script>

    <script>

        function fecharMensagem(){
            jQuery("#divNaoLogado").fadeOut();
        }

    </script>
    <script>
        fecharMensagem()
    </script>

</body>
</html>