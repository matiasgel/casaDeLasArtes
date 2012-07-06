<%@ page import="ar.edu.untdf.Proyecto" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="admin">
  <g:set var="entityName" value="${message(code: 'proyecto.label', default: 'Proyecto')}" />
  <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
  
  <div id="create-proyecto" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${proyectoInstance}">
      <ul class="errors" role="alert">
        <g:eachError bean="${proyectoInstance}" var="error">
          <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
      </ul>
    </g:hasErrors>
    <g:form action="save" >
      <g:render template="form"/>
      </br>
      <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Registrar')}" />
    </g:form>
  </div>
</body>
</html>
