<%@ page import="salaobyme.Dia" %>



<div class="fieldcontain ${hasErrors(bean: diaInstance, field: 'dia', 'error')} required">
	<label for="dia">
		<g:message code="dia.dia.label" default="Dia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dia" required="" value="${diaInstance?.dia}"/>
</div>

