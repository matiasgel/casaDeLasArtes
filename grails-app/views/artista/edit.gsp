<%@ page import="ar.edu.untdf.Artista" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'artista.label', default: 'Artista')}" />
  <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
  <div id="edit-artista" class="content scaffold-edit" role="main">
    <h1><g:message code="Editar mis datos" /></h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${artistaInstance}">
      <ul class="errors" role="alert">
        <g:eachError bean="${artistaInstance}" var="error">
          <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
        </g:eachError>
      </ul>
    </g:hasErrors>
    <g:form method="post" >
      <g:hiddenField name="id" value="${artistaInstance?.id}" />
      <g:hiddenField name="version" value="${artistaInstance?.version}" />
      <fieldset class="form">
        <g:render template="formedit"/>
      </fieldset>
      <fieldset class="buttons">        
        <g:actionSubmit class="save" action="update" value="Aceptar" />        
      </fieldset>
    </g:form>
    <!--<g:actionSubmit class="show" action="show" value="Cancelar" params=""/>-->
  </div>
</body>
</html>
