<%@ page import="ar.edu.untdf.Espacio" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="admin">
  <g:set var="entityName" value="${message(code: 'espacio.label', default: 'Espacio')}" />
  <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
  <div id="edit-espacio" class="content scaffold-edit" role="main">
    <h1 align="center">Edición del espacio</h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${espacioInstance}">
      <ul class="errors" role="alert">
        <g:eachError bean="${espacioInstance}" var="error">
          <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
      </ul>
    </g:hasErrors>
    <g:form method="post" >
      <g:hiddenField name="id" value="${espacioInstance?.id}" />
      <g:hiddenField name="version" value="${espacioInstance?.version}" />
      <g:render template="form"/>
      </br>
      <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
      <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </g:form>
    <g:form>
      </br>
      <g:actionSubmit class="list" action="list" value="Volver a la lista" />
    </g:form>
  </div>
</body>
</html>
