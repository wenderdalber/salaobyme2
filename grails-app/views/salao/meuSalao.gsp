<%--
  Created by IntelliJ IDEA.
  User: WenderDalber
  Date: 16/03/14
  Time: 14:47
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Meu Salão | SalaoBy.Me</title>
    <meta name="layout" content="mainAdmin"/>
</head>

<body>

    <g:each in="${salao}">
        <table class="table table-bordered">
            <th>Nome</th>
            <th>CNPJ</th>
            <th>Endereço</th>
            <th>Número</th>
            <th>Bairro</th>
            <th>Cidade</th>
            <th>Estado</th>
            <th>Alterar</th>
            <tr>
                <td>${salao.nome}</td>
                <td>${salao.cnpj}</td>
                <td>${salao.endereco.logradouro}</td>
                <td>${salao.endereco.numero}</td>
                <td>${salao.endereco.bairro}</td>
                <td>${salao.endereco.cidade}</td>
                <td>${salao.endereco.estado}</td>
                <td><g:link class="btn btn-primary edit" action="edit" id="${salao.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link></td>
            </tr>
        </table>
    </g:each>

</body>
</html>