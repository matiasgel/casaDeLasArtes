<%@ page import="ar.edu.untdf.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="evento.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${eventoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'fechahoraRealizacion', 'error')} required">
	<label for="fechahoraRealizacion">
		<g:message code="evento.fechahoraRealizacion.label" default="Fecha y Hora de Realizacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechahoraRealizacion" precision="minute"  value="${eventoInstance?.fechahoraRealizacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miEspacio', 'error')} required">
	<label for="miEspacio">
		<g:message code="evento.miEspacio.label" default="Espacio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miEspacio" name="miEspacio.id" from="${ar.edu.untdf.Espacio.list()}" optionKey="id" required="" value="${eventoInstance?.miEspacio?.id}" class="many-to-one"/>
        <g:link controller="Espacio" action="create">Agregar Espacio</g:link>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miContacto', 'error')} required">
	<label for="miContacto">
		<g:message code="evento.miContacto.label" default="Contacto" />
		<span class="required-indicator">*</span>
	</label>
        <g:select id="miContacto" name="miContacto.id" from="${ar.edu.untdf.Contacto.list()}" optionKey="id" required="" value="${proyectoInstance?.miContacto?.id}" class="many-to-one"/>
	<g:link controller="contacto" action="create">Agregar Contacto</g:link>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'valorEntrada', 'error')} required">
	<label for="valorEntrada">
		<g:message code="evento.valorEntrada.label" default="Valor Entrada" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="valorEntrada" required="" value="${fieldValue(bean: eventoInstance, field: 'valorEntrada')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'artistas', 'error')} ">
	<label for="artistas">
		<g:message code="evento.artistas.label" default="Artistas" />
		
	</label>
	<g:select name="artistas" from="${ar.edu.untdf.Artista.list()}" multiple="multiple" optionKey="id" size="5" value="${eventoInstance?.artistas*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'fechahoraFinalizacion', 'error')} required">
	<label for="fechahoraFinalizacion">
		<g:message code="evento.fechahoraFinalizacion.label" default="Fecha y Hora de Finalizacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechahoraFinalizacion" precision="minute"  value="${eventoInstance?.fechahoraFinalizacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miProyecto', 'error')} required">
	<label for="miProyecto">
		<g:message code="evento.miProyecto.label" default="Proyecto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miProyecto" name="miProyecto.id" from="${ar.edu.untdf.Proyecto.list()}" optionKey="id" required="" value="${eventoInstance?.miProyecto?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'observacion', 'error')} ">
	<label for="observacion">
		<g:message code="evento.observacion.label" default="Observacion" />
		
	</label>
	<g:textField name="observacion" value="${eventoInstance?.observacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'tipo', 'error')} ">
	<label for="tipo">
		<g:message code="evento.tipo.label" default="Tipo" />
		
	</label>
	<g:textField name="tipo" value="${eventoInstance?.tipo}"/>
</div>

