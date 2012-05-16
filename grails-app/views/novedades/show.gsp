
<%@ page import="ar.edu.untdf.Novedades" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="principal">
		<g:set var="entityName" value="${message(code: 'novedades.label', default: 'Novedades')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-novedades" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-novedades" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list novedades">
			
				<g:if test="${novedadesInstance?.cuerpo}">
				<li class="fieldcontain">
					<span id="cuerpo-label" class="property-label"><g:message code="novedades.cuerpo.label" default="Cuerpo" /></span>
					
						<span class="property-value" aria-labelledby="cuerpo-label"><g:fieldValue bean="${novedadesInstance}" field="cuerpo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${novedadesInstance?.sintesis}">
				<li class="fieldcontain">
					<span id="sintesis-label" class="property-label"><g:message code="novedades.sintesis.label" default="Sintesis" /></span>
					
						<span class="property-value" aria-labelledby="sintesis-label"><g:fieldValue bean="${novedadesInstance}" field="sintesis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${novedadesInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="novedades.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${novedadesInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${novedadesInstance?.id}" />
					<g:link class="edit" action="edit" id="${novedadesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
