
<%@ page import="salaobyme.Proprietario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proprietario.label', default: 'Proprietario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-proprietario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-proprietario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'proprietario.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'proprietario.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="senha" title="${message(code: 'proprietario.senha.label', default: 'Senha')}" />
					
						<g:sortableColumn property="cpf" title="${message(code: 'proprietario.cpf.label', default: 'Cpf')}" />
					
						<g:sortableColumn property="telefone" title="${message(code: 'proprietario.telefone.label', default: 'Telefone')}" />
					
						<g:sortableColumn property="celular" title="${message(code: 'proprietario.celular.label', default: 'Celular')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${proprietarioInstanceList}" status="i" var="proprietarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${proprietarioInstance.id}">${fieldValue(bean: proprietarioInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: proprietarioInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: proprietarioInstance, field: "senha")}</td>
					
						<td>${fieldValue(bean: proprietarioInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: proprietarioInstance, field: "telefone")}</td>
					
						<td>${fieldValue(bean: proprietarioInstance, field: "celular")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${proprietarioInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
