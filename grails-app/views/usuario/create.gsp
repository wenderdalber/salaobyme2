<%@ page import="salaobyme.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	<style>
        .passos{

            height: 350px;
            float:left;
            margin-bottom: 50px;
        }
        .passos img{
            width: 373px;
        }

        .divEspaco{
            width: 10px;
            height: 250px;
            float:left;
        }
        .create-usuario{
            height: 1000px;

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
		<div id="create-usuario" class="content scaffold-create create-usuario" role="main">
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
                    <g:submitButton name="create" class="btn btn-success btn-lg save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>

			</g:form>
		</div>
	</body>
</html>
