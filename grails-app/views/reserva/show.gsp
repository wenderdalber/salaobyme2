
<%@ page import="salaobyme.Reserva" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reserva.label', default: 'Reserva')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-reserva" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-reserva" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list reserva">
			
				<g:if test="${reservaInstance?.dataReserva}">
				<li class="fieldcontain">
					<span id="dataReserva-label" class="property-label"><g:message code="reserva.dataReserva.label" default="Data Reserva" /></span>
					
						<span class="property-value" aria-labelledby="dataReserva-label"><g:formatDate date="${reservaInstance?.dataReserva}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservaInstance?.horario}">
				<li class="fieldcontain">
					<span id="horario-label" class="property-label"><g:message code="reserva.horario.label" default="Horario" /></span>
					
						<span class="property-value" aria-labelledby="horario-label"><g:link controller="horario" action="show" id="${reservaInstance?.horario?.id}">${reservaInstance?.horario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservaInstance?.salao}">
				<li class="fieldcontain">
					<span id="salao-label" class="property-label"><g:message code="reserva.salao.label" default="Salao" /></span>
					
						<span class="property-value" aria-labelledby="salao-label"><g:link controller="salao" action="show" id="${reservaInstance?.salao?.id}">${reservaInstance?.salao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservaInstance?.servico}">
				<li class="fieldcontain">
					<span id="servico-label" class="property-label"><g:message code="reserva.servico.label" default="Servico" /></span>
					
						<span class="property-value" aria-labelledby="servico-label"><g:link controller="servico" action="show" id="${reservaInstance?.servico?.id}">${reservaInstance?.servico?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservaInstance?.situacao}">
				<li class="fieldcontain">
					<span id="situacao-label" class="property-label"><g:message code="reserva.situacao.label" default="Situacao" /></span>
					
						<span class="property-value" aria-labelledby="situacao-label"><g:fieldValue bean="${reservaInstance}" field="situacao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${reservaInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="reserva.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${reservaInstance?.usuario?.id}">${reservaInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${reservaInstance?.id}" />
					<g:link class="edit" action="edit" id="${reservaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
