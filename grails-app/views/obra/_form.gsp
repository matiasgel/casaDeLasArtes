<%@ page import="ar.edu.untdf.Obra" %>



<!--<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'pathImagen', 'error')} required">
	<label for="pathImagen">
		<g:message code="Imagen" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pathImagen" required="" value="${obraInstance?.pathImagen}"/>
</div>-->

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="obra.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${obraInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="obra.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${obraInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'artista', 'error')} required">
	<label for="artista">
		<g:message code="obra.artista.label" default="Artista" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="artista" name="artista.id" from="${ar.edu.untdf.Artista.list()}" optionKey="id" required="" value="${obraInstance?.artista?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: obraInstance, field: 'categorias', 'error')} required">
	<label for="categorias">
		<g:message code="obra.categorias.label" default="Categorias" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="categorias" from="${ar.edu.untdf.Categoria.list()}" multiple="multiple" optionKey="id" size="5" value="${obraInstance?.categorias*.id}" class="many-to-many"/>
</div>

