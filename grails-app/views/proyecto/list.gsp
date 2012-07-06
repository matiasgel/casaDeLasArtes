
<%@ page import="ar.edu.untdf.Proyecto" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'proyecto.label', default: 'Proyecto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-proyecto" class="content scaffold-list" role="main">
			<h1>
                          Lista de Proyectos de la casa de las Artes
                        </h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'proyecto.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="resumen" title="${message(code: 'proyecto.resumen.label', default: 'Resumen')}" />
					
						<g:sortableColumn property="valido" title="${message(code: 'proyecto.valido.label', default: 'Valido')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${proyectoInstanceList}" status="i" var="proyectoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${proyectoInstance.id}">${fieldValue(bean: proyectoInstance, field: "nombre")}</g:link></td>
										
						<td>${fieldValue(bean: proyectoInstance, field: "resumen")}</td>
					
						<td><g:formatBoolean boolean="${proyectoInstance.valido}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${proyectoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
