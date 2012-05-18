<%@ page import="ar.edu.untdf.Contacto" %>



<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="contacto.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${contactoInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'cargo', 'error')} ">
	<label for="cargo">
		<g:message code="contacto.cargo.label" default="Cargo" />
		
	</label>
	<g:textField name="cargo" value="${contactoInstance?.cargo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="contacto.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${contactoInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="contacto.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${contactoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="contacto.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="telefono" required="" value="${fieldValue(bean: contactoInstance, field: 'telefono')}"/>
</div>

