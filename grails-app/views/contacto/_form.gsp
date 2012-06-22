<%@ page import="ar.edu.untdf.Contacto" %>
<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="contacto.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" maxlength="50" required="" value="${contactoInstance?.apellido}"/>
</div>
<br/>
<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="contacto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="50" required="" value="${contactoInstance?.nombre}"/>
</div>
<br/>
<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="contacto.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${contactoInstance?.email}"/>
</div>
<br/>
<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="contacto.telefono.label" default="Telefono" />		
	</label>
	<g:textField name="telefono" value="${contactoInstance?.telefono}"/>
</div>