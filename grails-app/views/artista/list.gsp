
<%@ page import="ar.edu.untdf.Artista" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="principal">
		<g:set var="entityName" value="${message(code: 'artista.label', default: 'Artista')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-artista" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="login" title="${message(code: 'artista.login.label', default: 'Login')}" />
										
						<g:sortableColumn property="nombre" title="${message(code: 'artista.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellido" title="${message(code: 'artista.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'artista.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'artista.telefono.label', default: 'Telefono')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${artistaInstanceList}" status="i" var="artistaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${artistaInstance.id}">${fieldValue(bean: artistaInstance, field: "login")}</g:link></td>
					
						<td>${fieldValue(bean: artistaInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: artistaInstance, field: "apellido")}</td>
					
						<td>${fieldValue(bean: artistaInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: artistaInstance, field: "telefono")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${artistaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
