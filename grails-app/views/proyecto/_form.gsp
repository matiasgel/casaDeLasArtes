<%@ page import="ar.edu.untdf.Proyecto" %>



<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="proyecto.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${proyectoInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="proyecto.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${proyectoInstance?.nombre}"/>
</div>

