<%@ page import="ar.edu.untdf.Artista" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="principal">
		<g:set var="entityName" value="${message(code: 'artista.label', default: 'Artista')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-artista" role="main">
			<h1>Formulario de registro</h1>
                        <p><h3>Complete los campos</h3></p>
			<g:hasErrors bean="${artistaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${artistaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="registrar" name="registerForm">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="registrar" value="Registrar" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
