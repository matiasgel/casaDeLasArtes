
<%@ page import="ar.edu.untdf.Contacto" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="admin">
  <g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <div id="show-contacto" class="content scaffold-show" role="main">
    <h1 align="center">Contacto</h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list contacto">

      <g:if test="${contactoInstance?.apellido}">
        <li class="fieldcontain">
          <span id="apellido-label" class="property-label"><g:message code="contacto.apellido.label" default="Apellido: " /></span>

          <span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${contactoInstance}" field="apellido"/></span>

        </li>
      </g:if>

      <g:if test="${contactoInstance?.nombre}">
        <li class="fieldcontain">
          <span id="nombre-label" class="property-label"><g:message code="contacto.nombre.label" default="Nombre: " /></span>

          <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${contactoInstance}" field="nombre"/></span>

        </li>
      </g:if>

      <g:if test="${contactoInstance?.email}">
        <li class="fieldcontain">
          <span id="email-label" class="property-label"><g:message code="contacto.email.label" default="Email: " /></span>

          <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${contactoInstance}" field="email"/></span>

        </li>
      </g:if>

      <g:if test="${contactoInstance?.telefono}">
        <li class="fieldcontain">
          <span id="telefono-label" class="property-label"><g:message code="contacto.telefono.label" default="Telefono: " /></span>

          <span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${contactoInstance}" field="telefono"/></span>

        </li>
      </g:if>

    </ol>
    <g:form>
      <g:hiddenField name="id" value="${contactoInstance?.id}" />
      <g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" />
      <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
      <g:actionSubmit class="list" action="list" value="Volver a la lista" />
    </g:form>
  </div>
</body>
</html>
