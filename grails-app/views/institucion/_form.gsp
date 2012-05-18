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
	<g:textField name="tipo" value="${institucionInstance?.tipo}"/>
</div>

