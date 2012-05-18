<%@ page import="ar.edu.untdf.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="evento.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${eventoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'fechaRealizacion', 'error')} required">
	<label for="fechaRealizacion">
		<g:message code="evento.fechaRealizacion.label" default="Fecha Realizacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaRealizacion" precision="day"  value="${eventoInstance?.fechaRealizacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'artistas', 'error')} ">
	<label for="artistas">
		<g:message code="evento.artistas.label" default="Artistas" />
		
	</label>
	<g:select name="artistas" from="${ar.edu.untdf.Artista.list()}" multiple="multiple" optionKey="id" size="5" value="${eventoInstance?.artistas*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'auspiciantes', 'error')} required">
	<label for="auspiciantes">
		<g:message code="evento.auspiciantes.label" default="Auspiciantes" />
		<span class="required-indicator">*</span>
	</label>
	
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="evento.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${eventoInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'fechaFinalizacion', 'error')} required">
	<label for="fechaFinalizacion">
		<g:message code="evento.fechaFinalizacion.label" default="Fecha Finalizacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaFinalizacion" precision="day"  value="${eventoInstance?.fechaFinalizacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'gratuito', 'error')} ">
	<label for="gratuito">
		<g:message code="evento.gratuito.label" default="Gratuito" />
		
	</label>
	<g:checkBox name="gratuito" value="${eventoInstance?.gratuito}" />
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'horaFinalizacion', 'error')} required">
	<label for="horaFinalizacion">
		<g:message code="evento.horaFinalizacion.label" default="Hora Finalizacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="horaFinalizacion" precision="minute"  value="${eventoInstance?.horaFinalizacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'horaRealizacion', 'error')} required">
	<label for="horaRealizacion">
		<g:message code="evento.horaRealizacion.label" default="Hora Realizacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="horaRealizacion" precision="minute"  value="${eventoInstance?.horaRealizacion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miContacto', 'error')} required">
	<label for="miContacto">
		<g:message code="evento.miContacto.label" default="Mi Contacto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miContacto" name="miContacto.id" from="${ar.edu.untdf.Contacto.list()}" optionKey="id" required="" value="${eventoInstance?.miContacto?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miEspacio', 'error')} required">
	<label for="miEspacio">
		<g:message code="evento.miEspacio.label" default="Mi Espacio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miEspacio" name="miEspacio.id" from="${ar.edu.untdf.Espacio.list()}" optionKey="id" required="" value="${eventoInstance?.miEspacio?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miProyecto', 'error')} required">
	<label for="miProyecto">
		<g:message code="evento.miProyecto.label" default="Mi Proyecto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miProyecto" name="miProyecto.id" from="${ar.edu.untdf.Proyecto.list()}" optionKey="id" required="" value="${eventoInstance?.miProyecto?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'tipo', 'error')} ">
	<label for="tipo">
		<g:message code="evento.tipo.label" default="Tipo" />
		
	</label>
	<g:textField name="tipo" value="${eventoInstance?.tipo}"/>
</div>

