<%--
  Created by IntelliJ IDEA.
  User: WenderDalber
  Date: 22/02/14
  Time: 13:16
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>

<body>
<div class="container">
    <div class="row">

        <g:each in="${datas}" var="data">
            <div>
                <div>
                    ${data.format("dd/MM/yyyy")}
                </div>

                <g:each in="${todosHorarios}" var="horario">

                    <div>${horario}</div>
                    ${data.format("dd/MM/yyyy")+" "+horario}
                   ---- ${horariosOcupados[data.format("dd/MM/yyyy")+" "+horario]}------
                    <g:if test="${horariosOcupados[data.format("dd/MM/yyyy")+" "+horario]== true}">
                    ocupado
                    </g:if>
                </g:each>
            </div>
        </g:each>


    </div>
</div>
</body>
</html>