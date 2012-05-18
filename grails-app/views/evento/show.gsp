
<%@ page import="ar.edu.untdf.Evento" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="principal">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list evento">
			
				<g:if test="${eventoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="evento.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${eventoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.fechaRealizacion}">
				<li class="fieldcontain">
					<span id="fechaRealizacion-label" class="property-label"><g:message code="evento.fechaRealizacion.label" default="Fecha Realizacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaRealizacion-label"><g:formatDate date="${eventoInstance?.fechaRealizacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.artistas}">
				<li class="fieldcontain">
					<span id="artistas-label" class="property-label"><g:message code="evento.artistas.label" default="Artistas" /></span>
					
						<g:each in="${eventoInstance.artistas}" var="a">
						<span class="property-value" aria-labelledby="artistas-label"><g:link controller="artista" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.auspiciantes}">
				<li class="fieldcontain">
					<span id="auspiciantes-label" class="property-label"><g:message code="evento.auspiciantes.label" default="Auspiciantes" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="evento.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${eventoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.fechaFinalizacion}">
				<li class="fieldcontain">
					<span id="fechaFinalizacion-label" class="property-label"><g:message code="evento.fechaFinalizacion.label" default="Fecha Finalizacion" /></span>
					
						<span class="property-value" aria-labelledby="fechaFinalizacion-label"><g:formatDate date="${eventoInstance?.fechaFinalizacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.gratuito}">
				<li class="fieldcontain">
					<span id="gratuito-label" class="property-label"><g:message code="evento.gratuito.label" default="Gratuito" /></span>
					
						<span class="property-value" aria-labelledby="gratuito-label"><g:formatBoolean boolean="${eventoInstance?.gratuito}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.horaFinalizacion}">
				<li class="fieldcontain">
					<span id="horaFinalizacion-label" class="property-label"><g:message code="evento.horaFinalizacion.label" default="Hora Finalizacion" /></span>
					
						<span class="property-value" aria-labelledby="horaFinalizacion-label"><g:formatDate date="${eventoInstance?.horaFinalizacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.horaRealizacion}">
				<li class="fieldcontain">
					<span id="horaRealizacion-label" class="property-label"><g:message code="evento.horaRealizacion.label" default="Hora Realizacion" /></span>
					
						<span class="property-value" aria-labelledby="horaRealizacion-label"><g:formatDate date="${eventoInstance?.horaRealizacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.miContacto}">
				<li class="fieldcontain">
					<span id="miContacto-label" class="property-label"><g:message code="evento.miContacto.label" default="Mi Contacto" /></span>
					
						<span class="property-value" aria-labelledby="miContacto-label"><g:link controller="contacto" action="show" id="${eventoInstance?.miContacto?.id}">${eventoInstance?.miContacto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.miEspacio}">
				<li class="fieldcontain">
					<span id="miEspacio-label" class="property-label"><g:message code="evento.miEspacio.label" default="Mi Espacio" /></span>
					
						<span class="property-value" aria-labelledby="miEspacio-label"><g:link controller="espacio" action="show" id="${eventoInstance?.miEspacio?.id}">${eventoInstance?.miEspacio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.miProyecto}">
				<li class="fieldcontain">
					<span id="miProyecto-label" class="property-label"><g:message code="evento.miProyecto.label" default="Mi Proyecto" /></span>
					
						<span class="property-value" aria-labelledby="miProyecto-label"><g:link controller="proyecto" action="show" id="${eventoInstance?.miProyecto?.id}">${eventoInstance?.miProyecto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="evento.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${eventoInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${eventoInstance?.id}" />
					<g:link class="edit" action="edit" id="${eventoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
