<%@ page import="ar.edu.untdf.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="evento.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${eventoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'tipo', 'error')} ">
	<label for="tipo">
		<g:message code="evento.tipo.label" default="Tipo" />
		
	</label>
	<g:textField name="tipo" value="${eventoInstance?.tipo}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'observacion', 'error')} ">
	<label for="observacion">
		<g:message code="evento.observacion.label" default="Observacion" />
		
	</label>
	<g:textArea name="observacion" value="${eventoInstance?.observacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'fechahoraRealizacion', 'error')} required">
	<label for="fechahoraRealizacion">
		<g:message code="evento.fechahoraRealizacion.label" default="Fecha y Hora de Realizacion" />
		<span class="required-indicator">*</span>
	</label>
        <p>
          <g:datePicker name="fechahoraRealizacion" precision="minute"  value="${eventoInstance?.fechahoraRealizacion}"  />
        </p>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'fechahoraFinalizacion', 'error')} required">
	<label for="fechahoraFinalizacion">
		<g:message code="evento.fechahoraFinalizacion.label" default="Fecha y Hora de Finalizacion" />
		<span class="required-indicator">*</span>
	</label>
        <p>
          <g:datePicker name="fechahoraFinalizacion" precision="minute"  value="${eventoInstance?.fechahoraFinalizacion}"  />
        </p>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miEspacio', 'error')} required">
	<label for="miEspacio">
		<g:message code="evento.miEspacio.label" default="Espacio donde se realizará" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miEspacio" name="miEspacio.id" from="${ar.edu.untdf.Espacio.list()}" optionKey="id" required="" value="${eventoInstance?.miEspacio?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miProyecto', 'error')} required">
	<label for="miProyecto">
		<g:message code="evento.miProyecto.label" default="Proyecto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miProyecto" name="miProyecto.id" from="${ar.edu.untdf.Proyecto.list()}" optionKey="id" required="" value="${eventoInstance?.miProyecto?.id}" class="many-to-one"/>
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
		<g:message code="evento.artistas.label" default="Artistas Invitados" />
		
	</label>
	<g:select name="artistas" from="${ar.edu.untdf.Artista.list()}" multiple="multiple" optionKey="id" size="5" value="${eventoInstance?.artistas*.id}" class="many-to-many"/>
</div>

<h4>Datos del Contacto</h4>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miContacto.apellido', 'error')} ">
  <label for="miContacto.apellido">
    <g:message code="evento.miContacto.apellido.label" default="Apellido" />

  </label>
  <g:textField name="miContacto.apellido" required="" value="${eventoInstance?.miContacto?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miContacto.nombre', 'error')} ">
  <label for="miContacto.nombre">
    <g:message code="evento.miContacto.nombre.label" default="Nombre " />

  </label>
<g:textField name="miContacto.nombre" required="" value="${eventoInstance?.miContacto?.nombre}"/></p>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miContacto.email', 'error')} ">
  <label for="miContacto.email">
    <g:message code="evento.miContacto.email.label" default="Email" />

  </label>
<g:textField name="miContacto.email" required="" value="${eventoInstance?.miContacto?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'miContacto.email', 'error')} ">
  <label for="miContacto.telefono">
    <g:message code="evento.miContacto.telefono.label" default="Telefono" />

  </label>
  <g:textField name="miContacto.telefono" required="" value="${eventoInstance?.miContacto?.telefono}"/>
</div>
</div>
