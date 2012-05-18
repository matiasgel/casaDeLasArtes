
<%@ page import="ar.edu.untdf.Artista" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="principal">
		
	</head>
	<body>
		
		<!--<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>-->
		<div id="show-artista" class="content scaffold-show" role="main">
			<ul class="property-list artista">
			
				<g:if test="${artistaInstance?.login}">
				<li class="fieldcontain">
					<span id="login-label" class="property-label"><g:message code="artista.login.label" default="Login" /></span>
					
						<span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${artistaInstance}" field="login"/></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${artistaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="artista.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${artistaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${artistaInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="artista.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${artistaInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${artistaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="artista.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${artistaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${artistaInstance?.categorias}">
				<li class="fieldcontain">
					<span id="categorias-label" class="property-label"><g:message code="artista.categorias.label" default="Categorias" /></span>
					
						<g:each in="${artistaInstance.categorias}" var="c">
						<span class="property-value" aria-labelledby="categorias-label"><g:link controller="categoria" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				
			
				<g:if test="${artistaInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="artista.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${artistaInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
                                <li class="fieldcontain">
                                <g:link controller="categoria" action="list">Categorias</g:link>
                                </li>
                                <li class="fieldcontain">
                                <g:link controller="artista" action="listarObrasArtista" id="${artistaInstance?.id}">Obras</g:link>
                                </li>
                                
			</ul>                        
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${artistaInstance?.id}" />
					<g:link class="edit" action="edit" id="${artistaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
