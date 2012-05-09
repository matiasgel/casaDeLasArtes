<%@ page import="ar.edu.untdf.Categoria" %>



<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="categoria.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${categoriaInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoriaInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="categoria.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" value="${categoriaInstance?.nombre}"/>
</div>

