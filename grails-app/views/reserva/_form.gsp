<%@ page import="salaobyme.Reserva" %>



<div class="fieldcontain ${hasErrors(bean: reservaInstance, field: 'dataReserva', 'error')} required">
	<label for="dataReserva">
		<g:message code="reserva.dataReserva.label" default="Data Reserva" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataReserva" precision="day"  value="${reservaInstance?.dataReserva}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: reservaInstance, field: 'diaHorario', 'error')} required">
	<label for="diaHorario">
		<g:message code="reserva.diaHorario.label" default="Dia Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="diaHorario" name="diaHorario.id" from="${salaobyme.DiaHorario.list()}" optionKey="id" required="" value="${reservaInstance?.diaHorario?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservaInstance, field: 'salao', 'error')} required">
	<label for="salao">
		<g:message code="reserva.salao.label" default="Salao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="salao" name="salao.id" from="${salaobyme.Salao.list()}" optionKey="id" required="" value="${reservaInstance?.salao?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservaInstance, field: 'servico', 'error')} required">
	<label for="servico">
		<g:message code="reserva.servico.label" default="Servico" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="servico" name="servico.id" from="${salaobyme.Servico.list()}" optionKey="id" required="" value="${reservaInstance?.servico?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservaInstance, field: 'situacao', 'error')} required">
	<label for="situacao">
		<g:message code="reserva.situacao.label" default="Situacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="situacao" type="number" value="${reservaInstance.situacao}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: reservaInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="reserva.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${salaobyme.Usuario.list()}" optionKey="id" required="" value="${reservaInstance?.usuario?.id}" class="many-to-one"/>
</div>

