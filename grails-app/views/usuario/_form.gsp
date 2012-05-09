<%@ page import="ar.edu.untdf.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="usuario.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${usuarioInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${usuarioInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${usuarioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="usuario.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="telefono" required="" value="${fieldValue(bean: usuarioInstance, field: 'telefono')}"/>
</div>

