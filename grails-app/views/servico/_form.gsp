<%@ page import="salaobyme.Servico" %>

<link rel="stylesheet" href="${resource(dir: 'css', file: 'estilo.css')}" type="text/css">

<div class="centralizar pegaTudo">
<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'descricao', 'error')} required">
<div class="form-group" style="width: 50%">
    <label for="descricao">
		<g:message code="servico.descricao.label" default="Descricao" />
	</label>
	<g:textField name="descricao" class="form-control" required="" placeholder="Descreva seu serviço" value="${servicoInstance?.descricao}"/>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'preco', 'error')} required">
    <div class="form-group" style="width: 50%">
    <label for="preco">
		<g:message code="servico.preco.label" default="Preco" />
	</label>
	<g:field name="preco" class="form-control" placeholder="Preço" value="${fieldValue(bean: servicoInstance, field: 'preco')}" required=""/>
</div>
    </div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'categoria', 'error')} required">
    <div class="form-group" style="width: 50%">
    <label for="categoria">
		<g:message code="servico.categoria.label" default="Categoria" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="categoria" class="form-control" name="categoria.id" from="${salaobyme.Categoria.list()}" optionKey="id" required="" value="${servicoInstance?.categoria?.id}" class="many-to-one"/>
</div>
    </div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'status', 'error')} ">
    <div class="form-group" style="width: 50%">
    <label for="status">
		<g:message code="servico.status.label" default="Status" />
		
	</label>
	<g:checkBox name="status" class="checkbox" value="${servicoInstance?.status}" />
        </div>
</div>
</div>

