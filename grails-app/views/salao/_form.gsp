<%@ page import="salaobyme.Salao" %>



<div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="salao.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${salaoInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'cnpj', 'error')} required">
	<label for="cnpj">
		<g:message code="salao.cnpj.label" default="Cnpj" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cnpj" required="" value="${salaoInstance?.cnpj}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'proprietario', 'error')} required">
	<label for="proprietario">
		<g:message code="salao.proprietario.label" default="Proprietario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="proprietario" name="proprietario.id" from="${salaobyme.Proprietario.list()}" optionKey="id" required="" value="${salaoInstance?.proprietario?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'servicos', 'error')} ">
	<label for="servicos">
		<g:message code="salao.servicos.label" default="Servicos" />
		
	</label>
	<g:select name="servicos" from="${salaobyme.Servico.list()}" multiple="multiple" optionKey="id" size="5" value="${salaoInstance?.servicos*.id}" class="many-to-many"/>
</div>

