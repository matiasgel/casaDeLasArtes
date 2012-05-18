
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
					
						<g:sortableColumn property="horaRealizacion" title="${message(code: 'evento.horaRealizacion.label', default: 'Hora Realizacion')}" />
					
						<th><g:message code="evento.miEspacio.label" default="Mi Espacio" /></th>
					
						<th><g:message code="evento.miContacto.label" default="Mi Contacto" /></th>
					
						<g:sortableColumn property="valorEntrada" title="${message(code: 'evento.valorEntrada.label', default: 'Valor Entrada')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventoInstanceList}" status="i" var="eventoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventoInstance.id}">${fieldValue(bean: eventoInstance, field: "nombre")}</g:link></td>
					
						<td><g:formatDate date="${eventoInstance.fechaRealizacion}" /></td>
					
						<td><g:formatDate date="${eventoInstance.horaRealizacion}" /></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "miEspacio")}</td>
					
						<td>${fieldValue(bean: eventoInstance, field: "miContacto")}</td>
					
						<td>${fieldValue(bean: eventoInstance, field: "valorEntrada")}</td>
					
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
