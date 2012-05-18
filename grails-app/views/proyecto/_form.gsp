<%@ page import="ar.edu.untdf.Proyecto" %>



<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="proyecto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${proyectoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'fechaInicio', 'error')} required">
	<label for="fechaInicio">
		<g:message code="proyecto.fechaInicio.label" default="Fecha Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInicio" precision="day"  value="${proyectoInstance?.fechaInicio}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="proyecto.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${proyectoInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'misEventos', 'error')} ">
	<label for="misEventos">
		<g:message code="proyecto.misEventos.label" default="Mis Eventos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${proyectoInstance?.misEventos?}" var="m">
    <li><g:link controller="evento" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="evento" action="create" params="['proyecto.id': proyectoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'evento.label', default: 'Evento')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'valido', 'error')} ">
	<label for="valido">
		<g:message code="proyecto.valido.label" default="Valido" />
		
	</label>
	<g:checkBox name="valido" value="${proyectoInstance?.valido}" />
</div>

