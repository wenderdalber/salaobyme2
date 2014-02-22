<%@ page import="salaobyme.Proprietario" %>



<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="proprietario.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${proprietarioInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="proprietario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${proprietarioInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="proprietario.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${proprietarioInstance?.senha}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="proprietario.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${proprietarioInstance?.cpf}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="proprietario.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${proprietarioInstance?.telefone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="proprietario.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${proprietarioInstance?.celular}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'reservas', 'error')} ">
	<label for="reservas">
		<g:message code="proprietario.reservas.label" default="Reservas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${proprietarioInstance?.reservas?}" var="r">
    <li><g:link controller="reserva" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="reserva" action="create" params="['proprietario.id': proprietarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'reserva.label', default: 'Reserva')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: proprietarioInstance, field: 'saloes', 'error')} ">
	<label for="saloes">
		<g:message code="proprietario.saloes.label" default="Saloes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${proprietarioInstance?.saloes?}" var="s">
    <li><g:link controller="salao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="salao" action="create" params="['proprietario.id': proprietarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'salao.label', default: 'Salao')])}</g:link>
</li>
</ul>

</div>

