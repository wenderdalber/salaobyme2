<%@ page import="salaobyme.Dia" %>



<div class="fieldcontain ${hasErrors(bean: diaInstance, field: 'dia', 'error')} required">
	<label for="dia">
		<g:message code="dia.dia.label" default="Dia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dia" required="" value="${diaInstance?.dia}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: diaInstance, field: 'salao', 'error')} required">
	<label for="salao">
		<g:message code="dia.salao.label" default="Salao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="salao" name="salao.id" from="${salaobyme.Salao.list()}" optionKey="id" required="" value="${diaInstance?.salao?.id}" class="many-to-one"/>
</div>

