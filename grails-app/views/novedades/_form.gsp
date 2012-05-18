<%@ page import="ar.edu.untdf.Novedades" %>



<div class="fieldcontain ${hasErrors(bean: novedadesInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="novedades.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${novedadesInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: novedadesInstance, field: 'copete', 'error')} required">
	<label for="copete">
		<g:message code="novedades.copete.label" default="Copete" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="copete" required="" value="${novedadesInstance?.copete}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: novedadesInstance, field: 'cuerpo', 'error')} required">
	<label for="cuerpo">
		<g:message code="novedades.cuerpo.label" default="Cuerpo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cuerpo" required="" value="${novedadesInstance?.cuerpo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: novedadesInstance, field: 'pathImagen', 'error')} ">
	<label for="pathImagen">
		<g:message code="novedades.pathImagen.label" default="Path Imagen" />
		
	</label>
	<g:textField name="pathImagen" value="${novedadesInstance?.pathImagen}"/>
</div>

