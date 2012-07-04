<%@ page import="ar.edu.untdf.TipoEspacio" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="admin">
  <g:set var="entityName" value="${message(code: 'tipoEspacio.label', default: 'TipoEspacio')}" />
  <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
  <div id="create-tipoEspacio" class="content scaffold-create" role="main">
    <h1 align="center">Registrar un nuevo tipo de espacio</h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${tipoEspacioInstance}">
      <ul class="errors" role="alert">
        <g:eachError bean="${tipoEspacioInstance}" var="error">
          <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
      </ul>
    </g:hasErrors>
    <div>
      <g:form action="save" >
        <g:render template="form"/>
        </br>
        <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Registrar')}" />
      </g:form>
      <g:form>
        <g:actionSubmit class="list" action="list" value="${message(code: 'default.button.list.label', default: 'Volver a la lista')}" />
      </g:form>
    </div>
  </div>
</body>
</html>
