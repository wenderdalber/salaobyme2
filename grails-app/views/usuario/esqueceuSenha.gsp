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

<div class="centralizar pegaTudo" style="width: 50%">

    <g:form method="post" controller="Usuario" action="esqueceuSenha">
        <p><h2>Esqueceu sua senha? Entre com seu e-mail que iremos enviar uma nova senha!</h2></p>
        <div class="form-group">
            <label for="email">E-mail</label>
        <input type="email" name="email" id="email" class="form-control" placeholder="nome@exemplo.com">
            <br>
        <input type="submit" class="btn btn-success" value="Enviar"><br><br>
            ${flash.message}
        </div>
    </g:form>

</div>

</body>
</html>