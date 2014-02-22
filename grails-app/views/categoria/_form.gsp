<%@ page import="salaobyme.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="categoria.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${categoriaInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'servicos', 'error')} ">
	<label for="servicos">
		<g:message code="categoria.servicos.label" default="Servicos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categoriaInstance?.servicos?}" var="s">
    <li><g:link controller="servico" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="servico" action="create" params="['categoria.id': categoriaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'servico.label', default: 'Servico')])}</g:link>
</li>
</ul>

</div>

