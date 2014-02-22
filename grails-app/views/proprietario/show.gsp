
<%@ page import="salaobyme.Proprietario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proprietario.label', default: 'Proprietario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-proprietario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-proprietario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list proprietario">
			
				<g:if test="${proprietarioInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="proprietario.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${proprietarioInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proprietarioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="proprietario.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${proprietarioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proprietarioInstance?.senha}">
				<li class="fieldcontain">
					<span id="senha-label" class="property-label"><g:message code="proprietario.senha.label" default="Senha" /></span>
					
						<span class="property-value" aria-labelledby="senha-label"><g:fieldValue bean="${proprietarioInstance}" field="senha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proprietarioInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="proprietario.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${proprietarioInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proprietarioInstance?.telefone}">
				<li class="fieldcontain">
					<span id="telefone-label" class="property-label"><g:message code="proprietario.telefone.label" default="Telefone" /></span>
					
						<span class="property-value" aria-labelledby="telefone-label"><g:fieldValue bean="${proprietarioInstance}" field="telefone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proprietarioInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="proprietario.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${proprietarioInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proprietarioInstance?.reservas}">
				<li class="fieldcontain">
					<span id="reservas-label" class="property-label"><g:message code="proprietario.reservas.label" default="Reservas" /></span>
					
						<g:each in="${proprietarioInstance.reservas}" var="r">
						<span class="property-value" aria-labelledby="reservas-label"><g:link controller="reserva" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${proprietarioInstance?.saloes}">
				<li class="fieldcontain">
					<span id="saloes-label" class="property-label"><g:message code="proprietario.saloes.label" default="Saloes" /></span>
					
						<g:each in="${proprietarioInstance.saloes}" var="s">
						<span class="property-value" aria-labelledby="saloes-label"><g:link controller="salao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${proprietarioInstance?.id}" />
					<g:link class="edit" action="edit" id="${proprietarioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
