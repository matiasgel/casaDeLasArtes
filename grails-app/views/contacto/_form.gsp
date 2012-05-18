<%@ page import="ar.edu.untdf.Contacto" %>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="contacto.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" maxlength="15" required="" value="${contactoInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="contacto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="20" required="" value="${contactoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'cargo', 'error')} required">
	<label for="cargo">
		<g:message code="contacto.cargo.label" default="Cargo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cargo" required="" value="${contactoInstance?.cargo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="contacto.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${contactoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="contacto.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="telefono" required="" value="${fieldValue(bean: contactoInstance, field: 'telefono')}"/>
</div>

