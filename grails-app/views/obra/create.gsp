<%@ page import="ar.edu.untdf.Obra" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'obra.label', default: 'Obra')}" />
  <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
  <div id="create-obra" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${obraInstance}">
      <ul class="errors" role="alert">
        <g:eachError bean="${obraInstance}" var="error">
          <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
      </ul>
    </g:hasErrors>    
      <fieldset class="form">
        Imagen <g:uploadForm name="subirImagen" controller="obra" action="prueba" method="post">
          <input id="fileName" name="imagen" type="file" width="250px">
        </g:uploadForm>  
        <g:form action="save" >
          <g:hiddenField name="pathImagen" value="${pathImagen}" />
        <g:render template="form"/>
      </fieldset>
      <fieldset class="buttons">
        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
      </fieldset>
    </g:form>
  </div>
</body>
</html>
