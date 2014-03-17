<%@ page import="salaobyme.Usuario" %>

<link rel="stylesheet" href="${resource(dir: 'css', file: 'estilo.css')}" type="text/css">

<div class="centralizar pegaTudo">
<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nome', 'error')} required">
    <div class="form-group" style="width: 50%">
    <label for="nome">
		<g:message code="usuario.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" class="form-control" required="" value="${usuarioInstance?.nome}"/>
        </div>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
    <div class="form-group" style="width: 50%">
    <label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" class="form-control" name="email" required="" value="${usuarioInstance?.email}"/>
        </div>
</div>

    <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
        <div class="form-group" style="width: 50%">
            <label for="senha">
                <g:message code="usuario.senha.label" default="Senha" />
                <span class="required-indicator">*</span>
            </label>
            <input name="senha" class="form-control" type="password" required="" value="${usuarioInstance?.senha}"/>
        </div>
    </div>

<div>

