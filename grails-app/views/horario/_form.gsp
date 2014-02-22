<%@ page import="salaobyme.Horario" %>



<div class="fieldcontain ${hasErrors(bean: horarioInstance, field: 'horaFim', 'error')} required">
	<label for="horaFim">
		<g:message code="horario.horaFim.label" default="Hora Fim" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="horaFim" type="number" value="${horarioInstance.horaFim}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: horarioInstance, field: 'horaInicio', 'error')} required">
	<label for="horaInicio">
		<g:message code="horario.horaInicio.label" default="Hora Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="horaInicio" type="number" value="${horarioInstance.horaInicio}" required=""/>
</div>

