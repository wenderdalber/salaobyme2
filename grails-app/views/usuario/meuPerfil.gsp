<%--
  Created by IntelliJ IDEA.
  User: WenderDalber
  Date: 16/03/14
  Time: 16:23
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="mainAdmin"/>
    <title>Meu Perfil - SalaoBy.Me</title>
</head>

<body>

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

</body>
</html>