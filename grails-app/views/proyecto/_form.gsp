<%@ page import="ar.edu.untdf.Proyecto" %>



<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="proyecto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${proyectoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'resumen', 'error')} required">
	<label for="resumen">
		<g:message code="proyecto.resumen.label" default="Resumen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="resumen" cols="40" rows="5" maxlength="500" required="" value="${proyectoInstance?.resumen}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'miContacto', 'error')} required">
	<label for="miContacto">
		<g:message code="proyecto.miContacto.label" default="Mi Contacto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miContacto" name="miContacto.apellido" from="${ar.edu.untdf.Contacto.list()}" optionKey="id" required="" value="${proyectoInstance?.miContacto?.id}" class="many-to-one" optionValue="apellido"/>
        <g:link controller="contacto" action="create">Agregar Contacto</g:link>
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

