
<%@ page import="ar.edu.untdf.Proyecto" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="admin">
  <g:set var="entityName" value="${message(code: 'proyecto.label', default: 'Proyecto')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <!-- <a href="#show-proyecto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a> -->
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
      <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
      <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
  </div>
  <div id="show-proyecto" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list proyecto">

      <g:if test="${proyectoInstance?.nombre}">
        <li class="fieldcontain">
          <span id="nombre-label" class="property-label"><g:message code="proyecto.nombre.label" default="Nombre: " /></span>

          <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${proyectoInstance}" field="nombre"/></span>

        </li>
      </g:if>

      <g:if test="${proyectoInstance?.resumen}">
        <li class="fieldcontain">
          <span id="descripcion-label" class="property-label"><g:message code="proyecto.resumen.label" default="Resumen: " /></span>

          <span class="property-value" aria-labelledby="resumen-label"><g:fieldValue bean="${proyectoInstance}" field="resumen"/></span>

        </li>
      </g:if>

      <g:if test="${proyectoInstance?.valido}">
        <li class="fieldcontain">
          <span id="valido-label" class="property-label"><g:message code="proyecto.valido.label" default="Valido: " /></span>

          <span class="property-value" aria-labelledby="valido-label"><g:formatBoolean boolean="${proyectoInstance?.valido}" /></span>

        </li>
      </g:if>

      <h5>Datos del Contacto</h5>

      <g:if test="${proyectoInstance?.miContacto?.apellido}">
        <li class="fieldcontain">
          <span id="apellido-label" class="property-label"><g:message code="miContacto.apellido.label" default="Apellido: " /></span>

          <span class="property-value" aria-labelledby="miContacto.apellido-label"><g:fieldValue bean="${proyectoInstance.miContacto}" field="apellido"/></span>

        </li>
      </g:if>

      <g:if test="${proyectoInstance?.miContacto?.nombre}">
        <li class="fieldcontain">
          <span id="nombre-label" class="property-label"><g:message code="miContacto.nombre.label" default="Nombre: " /></span>

          <span class="property-value" aria-labelledby="miContacto.nombre-label"><g:fieldValue bean="${proyectoInstance.miContacto}" field="nombre"/></span>

        </li>
      </g:if>

      <g:if test="${proyectoInstance?.miContacto?.email}">
        <li class="fieldcontain">
          <span id="email-label" class="property-label"><g:message code="miContacto.email.label" default="Email: " /></span>

          <span class="property-value" aria-labelledby="miContacto.email-label"><g:fieldValue bean="${proyectoInstance.miContacto}" field="email"/></span>

        </li>
      </g:if>

      <g:if test="${proyectoInstance?.miContacto?.telefono}">
        <li class="fieldcontain">
          <span id="telefono-label" class="property-label"><g:message code="miContacto.telefono.label" default="Telefono: " /></span>

          <span class="property-value" aria-labelledby="miContacto.telefono-label"><g:fieldValue bean="${proyectoInstance.miContacto}" field="telefono"/></span>

        </li>
      </g:if>

      <g:if test="${proyectoInstance?.misEventos}">
        <li class="fieldcontain">
          <span id="misEventos-label" class="property-label"><g:message code="proyecto.misEventos.label" default="Mis Eventos" /></span>

        <g:each in="${proyectoInstance.misEventos}" var="m">
          <span class="property-value" aria-labelledby="misEventos-label"><g:link controller="evento" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
        </g:each>

        </li>
      </g:if>

    </ol>
    <g:form>
      <g:hiddenField name="id" value="${proyectoInstance?.id}" />
      <g:if test="${session.user!=null}">
        <g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Editar')}" />
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Eliminar')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
      </g:if>
    </g:form>
  </div>
</body>
</html>
