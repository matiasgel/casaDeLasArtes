<%@ page import="ar.edu.untdf.Institucion" %>



<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="institucion.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${institucionInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'tipo', 'error')} ">
	<label for="tipo">
		<g:message code="institucion.tipo.label" default="Tipo" />
		
	</label>
        <g:select name="institucion.tipo" from="${['Privada', 'Publica']}" />
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'miContacto', 'error')} ">
	<label for="miContacto">
		<g:message code="institucion.miContacto.label" default="Contacto" />
		
	</label>
        <g:select id="miContacto" name="miContacto.nombre" from="${ar.edu.untdf.Contacto.list()}" optionKey="nombre" required="" value="${proyectoInstance?.miContacto?.nombre}" class="many-to-one"/>
	<g:link controller="contacto" action="create">Agregar Contacto</g:link>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'espacios', 'error')} ">
	<label for="espacios">
		<g:message code="institucion.espacios.label" default="Espacios" />
		
	</label>
        <g:select id="espacios" name="espacios.id" from="${ar.edu.untdf.Espacio.list()}" optionKey="id" required="" value="${proyectoInstance?.espacios?.id}" class="many-to-one"/>
	<g:link controller="espacio" action="create">Agregar Contacto</g:link>
</div>

