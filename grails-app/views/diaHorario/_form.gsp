<%@ page import="salaobyme.DiaHorario" %>



<div class="fieldcontain ${hasErrors(bean: diaHorarioInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="diaHorario.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="status" type="number" value="${diaHorarioInstance.status}" required=""/>
</div>

