
<%@ page import="ar.edu.untdf.Institucion" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="principal">
		<g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-institucion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-institucion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list institucion">
			
				<g:if test="${institucionInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="institucion.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${institucionInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${institucionInstance?.tipoGestion}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="institucion.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${institucionInstance}" field="tipo"/></span>
					
				</li>
				</g:if>

                                <g:if test="${institucionInstance?.miContacto}">
				<li class="fieldcontain">
					<span id="miContacto-label" class="property-label"><g:message code="institucion.miContacto.label" default="Contacto" /></span>
					
						<span class="property-value" aria-labelledby="miContacto-label"><g:link controller="contacto" action="show" id="${institucionInstance?.miContacto?.id}">${institucionInstance?.miContacto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>

                                <g:if test="${institucionInstance?.espacios}">
                                  <table>
                                      <thead>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Direccion</th>
                                            <th>Capacidad</th>
                                        </tr>
                                      </thead>
                                      <g:each var="espacio"  in="${institucion.espacios}">
                                        <tr>
                                            <td>${espacio.nombre}</td>
                                            <td>${espacio.calleDireccion}, ${espacio.numeroDireccion}</td>
                                            <td>${fabricante.capacidad}</td>
                                        </tr>        
                                      </g:each>
                                  </table>
                                <!--  
				<li class="fieldcontain">
					<span id="espacios-label" class="property-label"><g:message code="institucion.espacios.label" default="Espacios" /></span>
					
						<g:each in="${institucionInstance.espacios}" var="e">
						<span class="property-value" aria-labelledby="espacios-label"><g:link controller="espacio" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li> -->
				</g:if>

			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${institucionInstance?.id}" />
					<g:link class="edit" action="edit" id="${institucionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
