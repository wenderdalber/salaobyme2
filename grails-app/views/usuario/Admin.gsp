<%--
  Created by IntelliJ IDEA.
  User: WenderDalber
  Date: 16/03/14
  Time: 00:00
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="mainAdmin"/>
    <title>Administrador - SalaoByMe</title>
</head>

<body>

<div class="panel panel-default">
    <div class="panel-heading"><h4>Próximas Reservas</h4></div>
    <div class="panel-body">

        <table class="table table-bordered">
            <tr><th>Data</th>
            <th>Hora</th>
            <th>Serviço</th>
        </tr>
            <tr>
                <td>21/03/2014</td>
                <td>02:00</td>
                <td>Corte Masculino</td>
            </tr>
            <tr>
                <td>21/03/2014</td>
                <td>03:00</td>
                <td>Escova</td>
            </tr>
            <tr>
                <td>21/03/2014</td>
                <td>05:00</td>
                <td>Chapinha</td>
            </tr>
        </table>

    </div><!--/panel-body-->
</div><!--/panel-->

<hr>

<!--tabs-->
<div class="container">
    <div class="col-md-4">
        <ul class="nav nav-tabs" id="myTab">
            <li class="active"><a href="#profile" data-toggle="tab">SalaoBy.Me</a></li>
            <li><a href="#messages" data-toggle="tab">Ajuda</a></li>
            <li><a href="#settings" data-toggle="tab">Versão</a></li>
        </ul>

        <div class="tab-content">
            <div class="tab-pane active" id="profile">
                <h4><i class="glyphicon glyphicon-user"></i></h4>
               SalaoBy.Me é a ferramenta mais completa para gerenciamento de salões de beleza.
                <p>Aqui você pode criar serviços, gerenciar horarios e se adaptar para atender melhor o seu cliente.</p>
            </div>
            <div class="tab-pane" id="messages">
                <h4><i class="glyphicon glyphicon-comment"></i></h4>
                Precisando de ajuda? Acesse nosso facebook e tenha suporte 24 horas.
                <p><a href="http://facebook.com/SalaoByMe">SalaoBy.Me</a></p>
            </div>
            <div class="tab-pane" id="settings">
                <h4><i class="glyphicon glyphicon-cog"></i></h4>
                SalãoBy.Me - Versão 2.0.
                <p>Desenvolvido por <a href="">Felipe Augusto</a>, <a href="">Rafael Jesus</a>, <a href="">Rafael Augusto Reis</a>, <a href="">Wender Dalber</a>.</p>
            </div>
        </div>
    </div>
</div>

<!--/tabs-->

<hr>

<div class="panel panel-default">
    <div class="panel-heading"><h4>Novas reservas</h4></div>
    <div class="panel-body">
        <div class="list-group">
            <table class="table table-bordered">
                <tr><th>Data</th>
                    <th>Hora</th>
                    <th>Serviço</th>
                </tr>
                <tr>
                    <td>28/03/2014</td>
                    <td>05:00</td>
                    <td>Corte Masculino</td>
                </tr>
                <tr>
                    <td>28/03/2014</td>
                    <td>06:00</td>
                    <td>Escova</td>
                </tr>
                <tr>
                    <td>29/03/2014</td>
                    <td>09:00</td>
                    <td>Chapinha</td>
                </tr>
            </table>
        </div>
    </div>
</div>

</div><!--/col-->
<div class="col-md-6">
    <div class="panel panel-default">
        <div class="panel-heading"><h4>Avisos</h4></div>
        <div class="panel-body">

            <div class="alert alert-info">
                <button type="button" class="close" data-dismiss="alert">×</button>
               Atenção, seu sistema pode ser desligado após 3 meses sem pagamento.
            </div>

            Nosso sistema de pagamento acusa que você está em débito a 2 meses Não perca acesso a seus dados.
            <br><br>
            Acesse <a href="http://facebook.com/SalaoByMe">SalaoBy.Me/Contas</a> e evite o cancelamento de seu sistema.
        </div>
    </div>

    <table class="table table-striped">
        <thead>
        <tr><th>Visits</th><th>ROI</th><th>Source</th></tr>
        </thead>
        <tbody>
        <tr><td>45</td><td>2.45%</td><td>Direct</td></tr>
        <tr><td>289</td><td>56.2%</td><td>Referral</td></tr>
        <tr><td>98</td><td>25%</td><td>Type</td></tr>
        <tr><td>..</td><td>..</td><td>..</td></tr>
        <tr><td>..</td><td>..</td><td>..</td></tr>
        </tbody>
    </table>

    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="panel-title">
                <i class="glyphicon glyphicon-wrench pull-right"></i>
                <h4>Post Request</h4>
            </div>
        </div>
        <div class="panel-body">

            <form class="form form-vertical">

                <div class="control-group">
                    <label>Name</label>
                    <div class="controls">
                        <input type="text" class="form-control" placeholder="Enter Name">
                    </div>
                </div>

                <div class="control-group">
                    <label>Message</label>
                    <div class="controls">
                        <textarea class="form-control"></textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label>Category</label>
                    <div class="controls">
                        <select class="form-control"><option>options</option></select>
                    </div>
                </div>

                <div class="control-group">
                    <label></label>
                    <div class="controls">
                        <button type="submit" class="btn btn-primary">
                            Post
                        </button>
                    </div>
                </div>

            </form>


        </div><!--/panel content-->
    </div><!--/panel-->

    <div class="panel panel-default">
        <div class="panel-heading"><div class="panel-title"><h4>Engagement</h4></div></div>
        <div class="panel-body">
            <div class="col-xs-4 text-center"><img src="http://placehold.it/80/BBBBBB/FFF" class="img-circle img-responsive"></div>
            <div class="col-xs-4 text-center"><img src="http://placehold.it/80/EFEFEF/555" class="img-circle img-responsive"></div>
            <div class="col-xs-4 text-center"><img src="http://placehold.it/80/EEEEEE/222" class="img-circle img-responsive"></div>
        </div>
    </div><!--/panel-->

</div><!--/col-span-6-->

</div><!--/row-->

<hr>
</div><!--/col-span-9-->
</div>
</div>
<!-- /Main -->


</body>
</html>