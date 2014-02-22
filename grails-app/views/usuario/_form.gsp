<%@ page import="salaobyme.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nome', 'error')} required">
    <label for="nome">
        <g:message code="usuario.nome.label" default="Nome"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nome" required="" value="${usuarioInstance?.nome}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
    <label for="email">
        <g:message code="usuario.email.label" default="Email"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="email" required="" value="${usuarioInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
    <label for="senha">
        <g:message code="usuario.senha.label" default="Senha"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="senha" required="" value="${usuarioInstance?.senha}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'reservas', 'error')} ">
    <label for="reservas">
        <g:message code="usuario.reservas.label" default="Reservas"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${usuarioInstance?.reservas ?}" var="r">
            <li><g:link controller="reserva" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="reserva" action="create"
                    params="['usuario.id': usuarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'reserva.label', default: 'Reserva')])}</g:link>
        </li>
    </ul>

</div>

