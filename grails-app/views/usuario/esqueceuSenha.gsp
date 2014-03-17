<%--
  Created by IntelliJ IDEA.
  User: WenderDalber
  Date: 16/03/14
  Time: 17:49
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Esqueceu senha - SalaoBy.Me</title>
</head>

<body>

<div class="centralizar pegaTudo">

    <g:form method="post" controller="Usuario" action="esqueceuSenha">
        <div class="form-group">
            <label for="email">E-mail</label>
        <input type="email" name="email" id="email" class="form-control" placeholder="nome@exemplo.com">
        <input type="submit" class="btn btn-success" value="Enviar">
            ${flash.message}
        </div>
    </g:form>

</div>

</body>
</html>