<%@ page import="ar.edu.untdf.Obra" %>



<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="obra.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${obraInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="obra.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${obraInstance?.nombre}"/>
</div>

