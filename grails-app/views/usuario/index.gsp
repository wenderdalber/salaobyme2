<%--
  Created by IntelliJ IDEA.
  User: WenderDalber
  Date: 12/02/14
  Time: 01:19
--%>

<%@ page import="java.text.SimpleDateFormat; java.text.DateFormat; org.h2.util.New" contentType="text/html;charset=UTF-8" %>
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
    <title>Meu Perfil - SalaoBy.Me</title>
</head>

<body>

<div class="divPerfil">

    <div class="divFotoPerfil">
        Logo
    </div>
    <div class="divDadosPerfil">
        Dados do usuário
    </div>

    <div>
        <h3>Meus Horários:</h3>

        <table class="table table-bordered table-responsive table-hover">
            <th> Salão </th>
            <th> Horário </th>
            <th> Serviço </th>
            <th>Opções</th>
            <tr>
            <td>Tia Cotinha</td>
            <td>Corte de Cabelo</td>
            <td>09:00</td>
            <td align="center"><button type="submit" class="btn btn-danger">Cancelar</button></td>
            </tr>
        </table>

    </div>

    <div class="center">
        <h3>Meus Horários Passados:</h3>

        <table class="table table-bordered table-responsive table-hover center">
            <th> Salão </th>
            <th> Horário </th>
            <th> Serviço </th>
            <th>Opções</th>
            <tr>
                <td>Tia Cotinha</td>
                <td>Escova</td>
                <td>19:00</td>
                <td align="center"><button type="submit" class="btn btn-primary">Visualizar</button></td>
            </tr>
        </table>

        <%

            def today = new Date()

            //def date = Calendar.getInstance()
            //DateFormat df = New SimpleDateFormat("dd/MM/yyyy")
            def dia = Date.parse("dd/MM/yy", today.dateString ).format("EEEE")
            //def a = df.format(date.getTime())
            print dia
            %>

    </div>

</div>

<!-- JavaScript -->
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/modern-business.js"></script>
</body>
</html>