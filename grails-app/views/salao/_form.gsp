<%@ page import="salaobyme.Salao" %>

<link rel="stylesheet" href="${resource(dir: 'css', file: 'estilo.css')}" type="text/css">

<div class="centralizar pegaTudo">
<div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'nome', 'error')} required">
	<div class="form-group" style="width: 50%">
    <label for="nome">
		<g:message code="salao.nome.label" default="Nome" />
	</label>
	<g:textField name="nome" class="form-control textField" required="" value="${salaoInstance?.nome}"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'cnpj', 'error')} required">
	<div class="form-group" style="width: 50%">
    <label for="cnpj">
		<g:message code="salao.cnpj.label" default="Cnpj" />
	</label>
	<g:textField name="cnpj" class="form-control textField" required="" value="${salaoInstance?.cnpj}"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'proprietario', 'error')} required">
	<div class="form-group" style="width: 50%">
    <label for="proprietario">
		<g:message code="salao.proprietario.label" default="Proprietario" />
	</label>
	<g:select id="proprietario" name="proprietario.id" from="${salaobyme.Proprietario.list()}" optionKey="id" required="" value="${salaoInstance?.proprietario?.id}" class="textField form-control many-to-one"/>
    </div>
    </div>

<div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'servicos', 'error')} ">
	<div class="form-group" style="width: 50%">
    <label for="servicos">
		<g:message code="salao.servicos.label" default="Servicos" />
		
	</label>
	<g:select name="servicos" from="${salaobyme.Servico.list()}" multiple="multiple" optionKey="id" size="5" value="${salaoInstance?.servicos*.id}" class="textField form-control many-to-many"/>
    </div>
    </div>
</div>