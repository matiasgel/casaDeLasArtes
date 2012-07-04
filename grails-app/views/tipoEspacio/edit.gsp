<%@ page import="ar.edu.untdf.TipoEspacio" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="admin">
  <g:set var="entityName" value="${message(code: 'tipoEspacio.label', default: 'TipoEspacio')}" />
  <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
  <div id="edit-tipoEspacio" class="content scaffold-edit" role="main">
    <h1 align="center">Edición del tipo de espacio</h1>
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
    <g:form method="post" >
      <g:hiddenField name="id" value="${tipoEspacioInstance?.id}" />
      <g:hiddenField name="version" value="${tipoEspacioInstance?.version}" />
      <g:render template="form"/>
      </br>
      <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Actualizar')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.update.confirm.message', default: '¿Está usted seguro?')}');" />
      <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Eliminar')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </g:form>
  </div>
</body>
</html>
