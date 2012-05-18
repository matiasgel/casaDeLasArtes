
<%@ page import="ar.edu.untdf.Evento" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="principal">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-evento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'evento.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="fechaRealizacion" title="${message(code: 'evento.fechaRealizacion.label', default: 'Fecha Realizacion')}" />
					
						<g:sortableColumn property="auspiciantes" title="${message(code: 'evento.auspiciantes.label', default: 'Auspiciantes')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'evento.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="fechaFinalizacion" title="${message(code: 'evento.fechaFinalizacion.label', default: 'Fecha Finalizacion')}" />
					
						<g:sortableColumn property="gratuito" title="${message(code: 'evento.gratuito.label', default: 'Gratuito')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventoInstanceList}" status="i" var="eventoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventoInstance.id}">${fieldValue(bean: eventoInstance, field: "nombre")}</g:link></td>
					
						<td><g:formatDate date="${eventoInstance.fechaRealizacion}" /></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "auspiciantes")}</td>
					
						<td>${fieldValue(bean: eventoInstance, field: "descripcion")}</td>
					
						<td><g:formatDate date="${eventoInstance.fechaFinalizacion}" /></td>
					
						<td><g:formatBoolean boolean="${eventoInstance.gratuito}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
