<%@ page import="ar.edu.untdf.Novedades" %>



<div class="fieldcontain ${hasErrors(bean: novedadesInstance, field: 'cuerpo', 'error')} ">
	<label for="cuerpo">
		<g:message code="novedades.cuerpo.label" default="Cuerpo" />
		
	</label>
	<g:textField name="cuerpo" value="${novedadesInstance?.cuerpo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: novedadesInstance, field: 'sintesis', 'error')} ">
	<label for="sintesis">
		<g:message code="novedades.sintesis.label" default="Sintesis" />
		
	</label>
	<g:textField name="sintesis" value="${novedadesInstance?.sintesis}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: novedadesInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="novedades.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" value="${novedadesInstance?.titulo}"/>
</div>

