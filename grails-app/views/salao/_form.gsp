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

    <div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'logradouro', 'error')} required">
        <div class="form-group" style="width: 50%">
            <label for="logradouro">
                <g:message code="salao.endereco.logradouro.label" default="Endereço" />
            </label>
            <g:textField name="logradouro" class="form-control textField" required="" value="${salaoInstance?.endereco.logradouro}"/>
        </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'logradouro', 'error')} required">
        <div class="form-group" style="width: 50%">
            <label for="logradouro">
                <g:message code="salao.endereco.logradouro.label" default="Endereço" />
            </label>
            <g:textField name="logradouro" class="form-control textField" required="" value="${salaoInstance?.endereco.logradouro}"/>
        </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'numero', 'error')} required">
        <div class="form-group" style="width: 50%">
            <label for="numero">
                <g:message code="salao.endereco.numero.label" default="Número" />
            </label>
            <g:textField name="numero" class="form-control textField" required="" value="${salaoInstance?.endereco.numero}"/>
        </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'bairro', 'error')} required">
        <div class="form-group" style="width: 50%">
            <label for="bairro">
                <g:message code="salao.endereco.bairro.label" default="Bairro" />
            </label>
            <g:textField name="bairro" class="form-control textField" required="" value="${salaoInstance?.endereco.bairro}"/>
        </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'cidade', 'error')} required">
        <div class="form-group" style="width: 50%">
            <label for="cidade">
                <g:message code="salao.endereco.cidade.label" default="Cidade" />
            </label>
            <g:textField name="cidade" class="form-control textField" required="" value="${salaoInstance?.endereco.cidade}"/>
        </div>
    </div>

    <div class="fieldcontain ${hasErrors(bean: salaoInstance, field: 'estado', 'error')} required">
        <div class="form-group" style="width: 50%">
            <label for="estado">
                <g:message code="salao.endereco.estado.label" default="Estado" />
            </label>
            <g:textField name="estado" style="width: 45px" class="form-control textField" required="" value="${salaoInstance?.endereco.estado}"/>
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