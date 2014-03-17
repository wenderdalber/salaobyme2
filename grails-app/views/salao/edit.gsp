<%@ page import="salaobyme.Salao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainAdmin">
		<g:set var="entityName" value="${message(code: 'salao.label', default: 'Salao')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-salao" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${salaoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${salaoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${salaoInstance?.id}" />
				<g:hiddenField name="version" value="${salaoInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-primary save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
