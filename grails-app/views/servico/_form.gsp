<%@ page import="salaobyme.Servico" %>



<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="servico.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${servicoInstance?.descricao}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'preco', 'error')} required">
	<label for="preco">
		<g:message code="servico.preco.label" default="Preco" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="preco" value="${fieldValue(bean: servicoInstance, field: 'preco')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'categoria', 'error')} required">
	<label for="categoria">
		<g:message code="servico.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" name="categoria.id" from="${salaobyme.Categoria.list()}" optionKey="id" required="" value="${servicoInstance?.categoria?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="servico.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="status" type="number" value="${servicoInstance.status}" required=""/>
</div>

