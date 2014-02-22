
<%@ page import="salaobyme.Reserva" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'reserva.label', default: 'Reserva')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-reserva" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-reserva" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dataReserva" title="${message(code: 'reserva.dataReserva.label', default: 'Data Reserva')}" />
					
						<th><g:message code="reserva.diaHorario.label" default="Dia Horario" /></th>
					
						<th><g:message code="reserva.salao.label" default="Salao" /></th>
					
						<th><g:message code="reserva.servico.label" default="Servico" /></th>
					
						<g:sortableColumn property="situacao" title="${message(code: 'reserva.situacao.label', default: 'Situacao')}" />
					
						<th><g:message code="reserva.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reservaInstanceList}" status="i" var="reservaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reservaInstance.id}">${fieldValue(bean: reservaInstance, field: "dataReserva")}</g:link></td>
					
						<td>${fieldValue(bean: reservaInstance, field: "diaHorario")}</td>
					
						<td>${fieldValue(bean: reservaInstance, field: "salao")}</td>
					
						<td>${fieldValue(bean: reservaInstance, field: "servico")}</td>
					
						<td>${fieldValue(bean: reservaInstance, field: "situacao")}</td>
					
						<td>${fieldValue(bean: reservaInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reservaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
