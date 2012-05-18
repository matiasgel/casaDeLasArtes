
<%@ page import="ar.edu.untdf.Proyecto" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'proyecto.label', default: 'Proyecto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-proyecto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-proyecto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list proyecto">
			
				<g:if test="${proyectoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="proyecto.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${proyectoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proyectoInstance?.resumen}">
				<li class="fieldcontain">
					<span id="resumen-label" class="property-label"><g:message code="proyecto.resumen.label" default="Resumen" /></span>
					
						<span class="property-value" aria-labelledby="resumen-label"><g:fieldValue bean="${proyectoInstance}" field="resumen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${proyectoInstance?.miContacto}">
				<li class="fieldcontain">
					<span id="miContacto-label" class="property-label"><g:message code="proyecto.miContacto.label" default="Mi Contacto" /></span>
					
						<span class="property-value" aria-labelledby="miContacto-label"><g:link controller="contacto" action="show" id="${proyectoInstance?.miContacto?.id}">${proyectoInstance?.miContacto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${proyectoInstance?.misEventos}">
				<li class="fieldcontain">
					<span id="misEventos-label" class="property-label"><g:message code="proyecto.misEventos.label" default="Mis Eventos" /></span>
					
						<g:each in="${proyectoInstance.misEventos}" var="m">
						<span class="property-value" aria-labelledby="misEventos-label"><g:link controller="evento" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${proyectoInstance?.valido}">
				<li class="fieldcontain">
					<span id="valido-label" class="property-label"><g:message code="proyecto.valido.label" default="Valido" /></span>
					
						<span class="property-value" aria-labelledby="valido-label"><g:formatBoolean boolean="${proyectoInstance?.valido}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${proyectoInstance?.id}" />
					<g:link class="edit" action="edit" id="${proyectoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
