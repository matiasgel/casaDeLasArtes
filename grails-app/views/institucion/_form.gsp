<%@ page import="ar.edu.untdf.Institucion" %>



<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="institucion.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${institucionInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="institucion.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${institucionInstance.constraints.tipo.inList}" required="" value="${institucionInstance?.tipo}" valueMessagePrefix="institucion.tipo"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'espacios', 'error')} ">
	<label for="espacios">
		<g:message code="institucion.espacios.label" default="Espacios" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${institucionInstance?.espacios?}" var="e">
    <li><g:link controller="espacio" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="espacio" action="create" params="['institucion.id': institucionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'espacio.label', default: 'Espacio')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'miContacto', 'error')} required">
	<label for="miContacto">
		<g:message code="institucion.miContacto.label" default="Mi Contacto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miContacto" name="miContacto.id" from="${ar.edu.untdf.Contacto.list()}" optionKey="id" required="" value="${institucionInstance?.miContacto?.id}" class="many-to-one"/>
</div>

