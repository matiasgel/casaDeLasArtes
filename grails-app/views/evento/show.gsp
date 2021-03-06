
<%@ page import="ar.edu.untdf.Evento" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="admin">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
                                <g:javascript src="googlemaps.js" />
                <g:javascript>
                  var usCenterPoint = new GLatLng(39.833333, -98.583333)
                  var usZoom = 4
                  function load()
                  {
                    if (GBrowserIsCompatible())
                    {
                      var map = new GMap2(document.getElementById("map"))
                      map.setCenter(usCenterPoint, usZoom)
                      map.addControl(new GLargeMapControl());
                      map.addControl(new GMapTypeControl()); 
                      <g:each in="${espacioInstance?.miespacio}" status="i" var="espacio">
                         var point${espacio.id} = new GLatLng(${espacio.lat}, ${espacio.lng})
                         var marker${espacio.id} = new GMarker(point${espacio.id})
                         marker${espacio.id}.bindInfoWindowHtml("${espacio.nombre}")
                         map.addOverlay(marker${espacio.id})
                      </g:each>
                    }
                  }
                </g:javascript>
	</head>
	<body onload="load()">
		<!-- <a href="#show-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a> -->
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
			
				<g:if test="${eventoInstance?.fechahoraRealizacion}">
				<li class="fieldcontain">
					<span id="fechahoraRealizacion-label" class="property-label"><g:message code="evento.fechahoraRealizacion.label" default="Fechahora Realizacion" /></span>
					
						<span class="property-value" aria-labelledby="fechahoraRealizacion-label"><g:formatDate date="${eventoInstance?.fechahoraRealizacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.miEspacio}">
				<li class="fieldcontain">
					<span id="miEspacio-label" class="property-label"><g:message code="evento.miEspacio.label" default="Mi Espacio" /></span>
					
						<span class="property-value" aria-labelledby="miEspacio-label"><g:link controller="espacio" action="show" id="${eventoInstance?.miEspacio?.id}">${eventoInstance?.miEspacio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.miContacto}">
				<li class="fieldcontain">
					<span id="miContacto-label" class="property-label"><g:message code="evento.miContacto.label" default="Mi Contacto" /></span>
					
						<span class="property-value" aria-labelledby="miContacto-label"><g:link controller="contacto" action="show" id="${eventoInstance?.miContacto?.id}">${eventoInstance?.miContacto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.valorEntrada}">
				<li class="fieldcontain">
					<span id="valorEntrada-label" class="property-label"><g:message code="evento.valorEntrada.label" default="Valor Entrada" /></span>
					
						<span class="property-value" aria-labelledby="valorEntrada-label"><g:fieldValue bean="${eventoInstance}" field="valorEntrada"/></span>
					
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
			
				<g:if test="${eventoInstance?.fechahoraFinalizacion}">
				<li class="fieldcontain">
					<span id="fechahoraFinalizacion-label" class="property-label"><g:message code="evento.fechahoraFinalizacion.label" default="Fechahora Finalizacion" /></span>
					
						<span class="property-value" aria-labelledby="fechahoraFinalizacion-label"><g:formatDate date="${eventoInstance?.fechahoraFinalizacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.miProyecto}">
				<li class="fieldcontain">
					<span id="miProyecto-label" class="property-label"><g:message code="evento.miProyecto.label" default="Mi Proyecto" /></span>
					
						<span class="property-value" aria-labelledby="miProyecto-label"><g:link controller="proyecto" action="show" id="${eventoInstance?.miProyecto?.id}">${eventoInstance?.miProyecto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.observacion}">
				<li class="fieldcontain">
					<span id="observacion-label" class="property-label"><g:message code="evento.observacion.label" default="Observacion" /></span>
					
						<span class="property-value" aria-labelledby="observacion-label"><g:fieldValue bean="${eventoInstance}" field="observacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eventoInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="evento.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${eventoInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
			</ol>
                        <br/>
                        <div id="mapa"></div>
			<br/>
                        <g:form>
				<g:hiddenField name="id" value="${eventoInstance?.id}" />
                                <g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" />
                                <!-- <g:link class="edit" action="edit" id="${eventoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link> -->                                
				<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</g:form>
		</div>
	</body>
</html>
