
<%@ page import="ar.edu.untdf.TipoEspacio" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'tipoEspacio.label', default: 'TipoEspacio')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <!-- <a href="#show-tipoEspacio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a> -->
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
      <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
      <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
  </div>
  <div id="show-tipoEspacio" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list tipoEspacio">

      <g:if test="${tipoEspacioInstance?.nombre}">
        <li class="fieldcontain">
          <span id="nombre-label" class="property-label"><g:message code="tipoEspacio.nombre.label" default="Nombre" /></span>

          <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${tipoEspacioInstance}" field="nombre"/></span>

        </li>
      </g:if>

      <g:if test="${tipoEspacioInstance?.descripcion}">
        <li class="fieldcontain">
          <span id="descripcion-label" class="property-label"><g:message code="tipoEspacio.descripcion.label" default="Descripcion" /></span>

          <span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${tipoEspacioInstance}" field="descripcion"/></span>

        </li>
      </g:if>

    </ol>
    <g:form>
      <g:hiddenField name="id" value="${tipoEspacioInstance?.id}" />
      <g:if test="${session.user!=null}">
        <g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Editar')}" />
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Eliminar')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
      </g:if>
    </g:form>
  </div>
</body>
</html>
