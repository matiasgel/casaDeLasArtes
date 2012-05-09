<%@ page import="ar.edu.untdf.TipoEspacio" %>



<div class="fieldcontain ${hasErrors(bean: tipoEspacioInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="tipoEspacio.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${tipoEspacioInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: tipoEspacioInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="tipoEspacio.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${tipoEspacioInstance?.nombre}"/>
</div>

