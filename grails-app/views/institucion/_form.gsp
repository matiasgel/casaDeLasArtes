<%@ page import="ar.edu.untdf.Institucion" %>



<p><div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="institucion.nombre.label" default="Nombre" />

	</label>
	<g:textField name="nombre" value="${institucionInstance?.nombre}"/>
</div></p>

<p><div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'tipo', 'error')} ">
	<label for="tipo">
		<g:message code="institucion.tipo.label" default="Tipo" />

	</label>
        <g:select id="tipoGestion" name="tipoGestion" from="${['Privada', 'Publica']}" value="${institucionInstance?.tipoGestion}"/>
</div></p>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'miContacto', 'error')} ">
        <h4>Datos del Contacto</h4>

        <p><label for="miContacto.apellido">
		<g:message code="institucion.miContacto.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
        <g:textField name="miContacto.apellido" value="${institucionInstance?.miContacto?.apellido}"/></p>

        <p><label for="miContacto.nombre">
		<g:message code="institucion.miContacto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
        <g:textField name="nombre" value="${institucionInstance?.miContacto?.nombre}"/></p>

        <p><label for="miContacto.email">
		<g:message code="institucion.miContacto.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
        <g:textField name="email" value="${institucionInstance?.miContacto?.email}"/></p>

        <p><label for="miContacto.telefono">
		<g:message code="institucion.miContacto.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
        <g:textField name="telefono" value="${institucionInstance?.miContacto?.telefono}"/></p>
</div>

<!--
<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'espacios', 'error')} ">
	<label for="espacios">
		<g:message code="institucion.espacios.label" default="Espacios" />
		
	</label>
        <g:select id="espacios" name="espacios.id" from="${ar.edu.untdf.Espacio.list()}" optionKey="id" required="" value="${proyectoInstance?.espacios?.id}" class="many-to-one"/>
	<g:link controller="espacio" action="create">Agregar Espacio</g:link>
</div>
-->

