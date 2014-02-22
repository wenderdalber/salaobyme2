<%@ page import="salaobyme.DiaHorario" %>



<div class="fieldcontain ${hasErrors(bean: diaHorarioInstance, field: 'dia', 'error')} required">
	<label for="dia">
		<g:message code="diaHorario.dia.label" default="Dia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dia" name="dia.id" from="${salaobyme.Dia.list()}" optionKey="id" required="" value="${diaHorarioInstance?.dia?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: diaHorarioInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="diaHorario.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="horario" name="horario.id" from="${salaobyme.Horario.list()}" optionKey="id" required="" value="${diaHorarioInstance?.horario?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: diaHorarioInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="diaHorario.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="status" type="number" value="${diaHorarioInstance.status}" required=""/>
</div>

