<%@ page import="ar.edu.untdf.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="evento.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${eventoInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="evento.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${eventoInstance?.fecha}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="evento.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${eventoInstance?.nombre}"/>
</div>

