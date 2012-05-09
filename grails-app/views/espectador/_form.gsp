<%@ page import="ar.edu.untdf.Espectador" %>



<div class="fieldcontain ${hasErrors(bean: espectadorInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="espectador.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${espectadorInstance?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espectadorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="espectador.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${espectadorInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espectadorInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="espectador.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${espectadorInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espectadorInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="espectador.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="telefono" required="" value="${fieldValue(bean: espectadorInstance, field: 'telefono')}"/>
</div>

