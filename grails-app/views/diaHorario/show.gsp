
<%@ page import="salaobyme.DiaHorario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'diaHorario.label', default: 'DiaHorario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-diaHorario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-diaHorario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list diaHorario">
			
				<g:if test="${diaHorarioInstance?.dia}">
				<li class="fieldcontain">
					<span id="dia-label" class="property-label"><g:message code="diaHorario.dia.label" default="Dia" /></span>
					
						<span class="property-value" aria-labelledby="dia-label"><g:link controller="dia" action="show" id="${diaHorarioInstance?.dia?.id}">${diaHorarioInstance?.dia?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${diaHorarioInstance?.horario}">
				<li class="fieldcontain">
					<span id="horario-label" class="property-label"><g:message code="diaHorario.horario.label" default="Horario" /></span>
					
						<span class="property-value" aria-labelledby="horario-label"><g:link controller="horario" action="show" id="${diaHorarioInstance?.horario?.id}">${diaHorarioInstance?.horario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${diaHorarioInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="diaHorario.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${diaHorarioInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${diaHorarioInstance?.id}" />
					<g:link class="edit" action="edit" id="${diaHorarioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
