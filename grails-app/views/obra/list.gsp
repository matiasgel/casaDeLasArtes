
<%@ page import="ar.edu.untdf.Obra" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="principal">
		<g:set var="entityName" value="${message(code: 'obra.label', default: 'Obra')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-obra" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-obra" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'obra.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'obra.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${obraInstanceList}" status="i" var="obraInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${obraInstance.id}">${fieldValue(bean: obraInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: obraInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${obraInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
