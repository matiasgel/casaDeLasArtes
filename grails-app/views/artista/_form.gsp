<%@ page import="ar.edu.untdf.Artista" %>



<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="artista.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${artistaInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="artista.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${artistaInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="artista.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${artistaInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="artista.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="telefono" required="" value="${fieldValue(bean: artistaInstance, field: 'telefono')}"/>
</div>

