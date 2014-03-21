<%@ page import="salaobyme.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	<style>
        .passos{
            width: 350px;
            height: 350px;
            background-color: #ffffff;
            float:left;
        }

        .divEspaco{
            width: 10px;
            height: 250px;
            float:left;
        }
	</style>
    </head>
	<body>

    <div>

        <div class="passos">
            <img src=../images/item1.jpg />
        </div>
        <div class="divEspaco"></div>
        <div class="passos">
            <img src=../images/item2.jpg />
        </div>
        <div class="divEspaco"></div>
        <div class="passos">
            <img src=../images/item3.jpg />
        </div>

    </div>
		<div id="create-usuario" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${usuarioInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${usuarioInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn btn-success save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
