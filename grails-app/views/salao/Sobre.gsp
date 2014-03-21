<%--
  Created by IntelliJ IDEA.
  User: WenderDalber
  Date: 19/03/14
  Time: 01:16
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
    <title>SalaoBy.Me</title>


    <script type="text/javascript">

        function abreTermos(){
            jQuery("#div1").fadeOut();
            jQuery("#div3").fadeOut();
            jQuery("#div4").fadeOut();
            jQuery("#div5").fadeOut();
            jQuery("#div2").fadeIn()
        }
        function abrePoliticas(){
            jQuery("#div1").fadeOut();
            jQuery("#div2").fadeOut();
            jQuery("#div4").fadeOut();
            jQuery("#div5").fadeOut();
            jQuery("#div3").fadeIn()
        }
        function abrePerguntas(){
            jQuery("#div1").fadeOut();
            jQuery("#div2").fadeOut();
            jQuery("#div3").fadeOut();
            jQuery("#div5").fadeOut();
            jQuery("#div4").fadeIn()
        }
        function abreFale(){
            jQuery("#div1").fadeOut();
            jQuery("#div2").fadeOut();
            jQuery("#div3").fadeOut();
            jQuery("#div4").fadeOut();
            jQuery("#div5").fadeIn()
        }
        function abreQuem(){
            jQuery("#div2").fadeOut();
            jQuery("#div3").fadeOut();
            jQuery("#div4").fadeOut();
            jQuery("#div5").fadeOut();
            jQuery("#div1").fadeIn()
        }
        function fechaTudo(){
            jQuery("#div2").fadeOut()
            jQuery("#div3").fadeOut()
            jQuery("#div4").fadeOut()
            jQuery("#div5").fadeOut()
        }
    </script>


    <style>

    /* make sidebar nav vertical */
    @media (min-width: 768px) {
        .sidebar-nav .navbar .navbar-collapse {
            padding: 0;
            max-height: none;
        }
        .sidebar-nav .navbar ul {
            float: none;
            display: block;
        }
        .sidebar-nav .navbar li {
            float: none;
            display: block;
        }
        .sidebar-nav .navbar li a {
            padding-top: 12px;
            padding-bottom: 12px;
        }

        .institucional{
            background-color: #e4e0e0;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            -moz-box-shadow:    3px 3px 5px 6px;
            -webkit-box-shadow: 3px 3px 5px 6px;
            box-shadow:         3px 3px 5px 6px;
            height: 210px;
        }

        .institucional2{
            background-color: #e4e0e0;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            -moz-box-shadow:    3px 3px 5px 6px;
            -webkit-box-shadow: 3px 3px 5px 6px;
            box-shadow:         3px 3px 5px 6px;
            height: auto;
        }
    }

    </style>

</head>

<body>

<div class="row">
    <div class="col-md-3">
        <div class="sidebar-nav">
            <div class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <span class="visible-sm visible-xs navbar-brand">Sidebar menu</span>
                </div>
                <div class="navbar-collapse collapse sidebar-navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="javascript: abreQuem();">Quem somos</a></li>
                        <li><a href="javascript: abreTermos();">Termos de uso</a></li>
                        <li><a href="javascript: abrePoliticas();">Políticas de privacidade</a></li>
                        <li><a href="javascript: abrePerguntas();">Perguntas Frequentes</a></li>
                        <li><a href="javascript: abreFale();">Fale conosco <span class="badge"></span></a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
    <div class="col-md-9 institucional" id="div1">
        <p><h2>Quem somos</h2></p>
        ___________________________________________________________________________________________________
        <p>
            <strong>O Salãobyme é uma plataforma que visa aproximar clientes e estabelecimentos de beleza por meio
            de agendamento online de seus serviços. Aqui você encontra os melhores estabelecimentos e consegue agendar com apenas alguns cliques.
            Fácil, rápido e divertido! Para os nossos parceiros, o Salãobyme proporciona uma maior visibilidade na internet, ajudando na
            prospecção de novos clientes, além de fornecer um software de gestão completo na nuvem. Nosso software disponibiliza uma ferramenta completa para os nossos parceiros gerenciarem seus profissionais, serviços, clientes, horários e compromissos na agenda, além de disponibilizar relatórios financeiros e gerenciais
            </strong>
        </p>
    </div>
    <div class="col-md-9 institucional" id="div2">
        <p><h2>Termos de uso</h2></p>
        ___________________________________________________________________________________________________
        <p>
            <strong>O Salãobyme é uma plataforma que visa aproximar clientes e estabelecimentos de beleza por meio
            de agendamento online de seus serviços. Aqui você encontra os melhores estabelecimentos e consegue agendar com apenas alguns cliques.
            Fácil, rápido e divertido! Para os nossos parceiros, o Salãobyme proporciona uma maior visibilidade na internet, ajudando na
            prospecção de novos clientes, além de fornecer um software de gestão completo na nuvem. Nosso software disponibiliza uma ferramenta completa para os nossos parceiros gerenciarem seus profissionais, serviços, clientes, horários e compromissos na agenda, além de disponibilizar relatórios financeiros e gerenciais
            </strong>
        </p>
    </div>
    <div class="col-md-9 institucional" id="div3">
        <p><h2>Políticas de privacidade</h2></p>
        ___________________________________________________________________________________________________
        <p>
            <strong>O Salãobyme é uma plataforma que visa aproximar clientes e estabelecimentos de beleza por meio
            de agendamento online de seus serviços. Aqui você encontra os melhores estabelecimentos e consegue agendar com apenas alguns cliques.
            Fácil, rápido e divertido! Para os nossos parceiros, o Salãobyme proporciona uma maior visibilidade na internet, ajudando na
            prospecção de novos clientes, além de fornecer um software de gestão completo na nuvem. Nosso software disponibiliza uma ferramenta completa para os nossos parceiros gerenciarem seus profissionais, serviços, clientes, horários e compromissos na agenda, além de disponibilizar relatórios financeiros e gerenciais
            </strong>
        </p>
    </div>
    <div class="col-md-9 institucional" id="div4">
        <p><h2>Perguntas frequentes</h2></p>
        ___________________________________________________________________________________________________
        <p>
            <strong>O Salãobyme é uma plataforma que visa aproximar clientes e estabelecimentos de beleza por meio
            de agendamento online de seus serviços. Aqui você encontra os melhores estabelecimentos e consegue agendar com apenas alguns cliques.
            Fácil, rápido e divertido! Para os nossos parceiros, o Salãobyme proporciona uma maior visibilidade na internet, ajudando na
            prospecção de novos clientes, além de fornecer um software de gestão completo na nuvem. Nosso software disponibiliza uma ferramenta completa para os nossos parceiros gerenciarem seus profissionais, serviços, clientes, horários e compromissos na agenda, além de disponibilizar relatórios financeiros e gerenciais
            </strong>
        </p>
    </div>
    <div class="col-md-9 institucional2" id="div5">
        <p><h2>Fale conosco</h2></p>
        ___________________________________________________________________________________________________
        <p>
           <g:form class="form-horizontal" action="faleConosco" controller="Salao" method="post">
                <input type="text" class="form-control" id="nome" name="nome" style="width: 50%" placeholder="Nome">
                <input type="email" class="form-control" id="email" name="email" style="width: 50%" placeholder="nome@exemplo.com">
                <input type="text" class="form-control" id="telefone" name="telefone" style="width: 50%" placeholder="(12) 9999-9999">
                <textarea class="form-control" name="mensagem" id="mensagem" placeholder="Escreva sua mensagem" style="width: 50%"></textarea>
                <input type="submit" class="btn btn-primary" value="Enviar">
           </g:form>
        </p>
    </div>
</div>

<script>

    fechaTudo();

</script>

</body>
</html>