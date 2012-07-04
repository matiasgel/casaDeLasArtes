<%@ page import="ar.edu.untdf.Novedades" %>



<div class="fieldcontain ${hasErrors(bean: novedadesInstance, field: 'cuerpo', 'error')} ">
	<label for="cuerpo">
		<g:message code="novedades.cuerpo.label" default="Cuerpo" />
		
	</label>
	<g:textField name="cuerpo" value="${novedadesInstance?.cuerpo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: novedadesInstance, field: 'copete', 'error')} ">
	<label for="copete">
		<g:message code="novedades.copete.label" default="Copete" />
		
	</label>
	<g:textField name="copete" value="${novedadesInstance?.copete}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: novedadesInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="novedades.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${novedadesInstance?.titulo}"/>
</div>

