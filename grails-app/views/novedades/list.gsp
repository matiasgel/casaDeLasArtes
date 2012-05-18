
<%@ page import="ar.edu.untdf.Novedades" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'novedades.label', default: 'Novedades')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-novedades" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-novedades" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'novedades.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="copete" title="${message(code: 'novedades.copete.label', default: 'Copete')}" />
					
						<g:sortableColumn property="cuerpo" title="${message(code: 'novedades.cuerpo.label', default: 'Cuerpo')}" />
					
						<g:sortableColumn property="pathImagen" title="${message(code: 'novedades.pathImagen.label', default: 'Path Imagen')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${novedadesInstanceList}" status="i" var="novedadesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${novedadesInstance.id}">${fieldValue(bean: novedadesInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: novedadesInstance, field: "copete")}</td>
					
						<td>${fieldValue(bean: novedadesInstance, field: "cuerpo")}</td>
					
						<td>${fieldValue(bean: novedadesInstance, field: "pathImagen")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${novedadesInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
