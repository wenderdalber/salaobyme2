<%--
  Created by IntelliJ IDEA.
  User: WenderDalber
  Date: 16/03/14
  Time: 16:23
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <%if(session.getValue("usuarioPermissao") != "Admin"){%>
    <meta name="layout" content="main"/>
    <%}else{%>
    <meta name="layout" content="mainAdmin"/>
    <%}%>
    <title>Meu Perfil - SalaoBy.Me</title>
    <style>
        .usuario{
            margin: 0 auto;
            width: 50%;
            background-color: #ffffff;
        }

    </style>
</head>
<body>

<%if(session.getValue("usuarioPermissao") != "Admin"){%>
<g:each in="${usuario}">
<div class="usuario">
    <h2>Meus dados:</h2>
    <table class="table table-bordered">
    <th>Nome</th>
    <th>E-mail</th>
    <th>Editar</th>
    <tr>
        <td>${usuario.nome}</td>
        <td>${usuario.email}</td>
        <td>haha</td>
    </tr>
</table>

    <h2>Minhas Reservas</h2>
    <g:each in="${reserva}">
    <table class="table table-bordered">
        <th>Data Reserva</th>
        <th>Salao</th>
        <th>Serviço</th>
        <th>Dia</th>
        <th>Horário</th>
        <th>Cancelar</th>
        <tr>
            <td>${reserva.dataReserva.format("dd/MM/yyyy")}</td>
            <td>${reserva.salao.nome}</td>
            <td>${reserva.servico.descricao}</td>
            <td>${reserva.diaHorario.dia}</td>
            <td>${reserva.diaHorario.horario.horaInicio}</td>
            <td><g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'Cancelar', default: 'Cancelar')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></td>
        </tr>
    </table>
    </g:each>
</div>
</g:each>

<%}else{%>
<g:each in="${proprietario}">
    <table class="table table-bordered">
        <th>Nome</th>
        <th>E-mail</th>
        <th>Alterar</th>
        <tr>
            <td>${proprietario.nome}</td>
            <td>${proprietario.email}</td>
            <td><g:link class="edit" action="edit" id="${proprietario.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link></td>
        </tr>
    </table>

</g:each>
<%}%>

</body>
</html>