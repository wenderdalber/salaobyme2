
<%@ page import="salaobyme.Servico" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'servico.label', default: 'Servico')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-servico" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-servico" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'servico.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="preco" title="${message(code: 'servico.preco.label', default: 'Preco')}" />
					
						<th><g:message code="servico.categoria.label" default="Categoria" /></th>
					
						<g:sortableColumn property="status" title="${message(code: 'servico.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${servicoInstanceList}" status="i" var="servicoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${servicoInstance.id}">${fieldValue(bean: servicoInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: servicoInstance, field: "preco")}</td>
					
						<td>${fieldValue(bean: servicoInstance, field: "categoria")}</td>
					
						<td><g:formatBoolean boolean="${servicoInstance.status}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${servicoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
