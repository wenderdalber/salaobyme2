
<%@ page import="salaobyme.Salao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'salao.label', default: 'Salao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-salao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-salao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'salao.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="cnpj" title="${message(code: 'salao.cnpj.label', default: 'Cnpj')}" />
					
						<th><g:message code="salao.endereco.label" default="Endereco" /></th>
					
						<th><g:message code="salao.proprietario.label" default="Proprietario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${salaoInstanceList}" status="i" var="salaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${salaoInstance.id}">${fieldValue(bean: salaoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: salaoInstance, field: "cnpj")}</td>
					
						<td>${fieldValue(bean: salaoInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: salaoInstance, field: "proprietario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${salaoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
