
<%@ page import="ar.edu.untdf.Institucion" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <a href="#show-institucion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
      <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
      <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
  </div>
  <div id="show-institucion" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list institucion">

      <g:if test="${institucionInstance?.nombre}">
        <li class="fieldcontain">
          <span id="nombre-label" class="property-label"><g:message code="institucion.nombre.label" default="Nombre: " /></span>

          <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${institucionInstance}" field="nombre"/></span>

        </li>
      </g:if>

      <g:if test="${institucionInstance?.tipoGestion}">
        <li class="fieldcontain">
          <span id="tipoGestion-label" class="property-label"><g:message code="institucion.tipoGestion.label" default="Tipo: " /></span>

          <span class="property-value" aria-labelledby="tipoGestion-label"><g:fieldValue bean="${institucionInstance}" field="tipoGestion"/></span>

        </li>
      </g:if>

      <h5>Datos del Contacto</h5>

      <g:if test="${institucionInstance?.miContacto?.apellido}">
        <li class="fieldcontain">
          <span id="apellido-label" class="property-label"><g:message code="miContacto.apellido.label" default="Apellido: " /></span>

          <span class="property-value" aria-labelledby="miContacto.apellido-label"><g:fieldValue bean="${institucionInstance.miContacto}" field="apellido"/></span>

        </li>
      </g:if>

      <g:if test="${institucionInstance?.miContacto?.nombre}">
        <li class="fieldcontain">
          <span id="nombre-label" class="property-label"><g:message code="miContacto.nombre.label" default="Nombre: " /></span>

          <span class="property-value" aria-labelledby="miContacto.nombre-label"><g:fieldValue bean="${institucionInstance.miContacto}" field="nombre"/></span>

        </li>
      </g:if>

      <g:if test="${institucionInstance?.miContacto?.email}">
        <li class="fieldcontain">
          <span id="email-label" class="property-label"><g:message code="miContacto.email.label" default="Email: " /></span>

          <span class="property-value" aria-labelledby="miContacto.email-label"><g:fieldValue bean="${institucionInstance.miContacto}" field="email"/></span>

        </li>
      </g:if>

      <g:if test="${institucionInstance?.miContacto?.telefono}">
        <li class="fieldcontain">
          <span id="telefono-label" class="property-label"><g:message code="miContacto.telefono.label" default="Telefono: " /></span>

          <span class="property-value" aria-labelledby="miContacto.telefono-label"><g:fieldValue bean="${institucionInstance.miContacto}" field="telefono"/></span>

        </li>
      </g:if>

      <g:if test="${institucionInstance?.espacios}">
      <h5>Espacios de la Institución</h5>
        <table>
          <thead>
            <tr>
              <th>Nombre</th>
              <th>Direccion</th>
              <th>Capacidad</th>
            </tr>
          </thead>
          <g:each var="espacio"  in="${institucionInstance.espacios}">
            <tr>
              <td><g:link controller="espacio" action="show" id="%{espacio.id}"> ${espacio.nombre} </g:link></td>
            <td>${espacio.calleDireccion}, ${espacio.numeroDireccion}</td>
            <td>${espacio.capacidad}</td>
            </tr>        
          </g:each>
        </table>
      </g:if>

    </ol>
    <g:form>
      <fieldset class="buttons">
        <g:hiddenField name="id" value="${institucionInstance?.id}" />
        <g:link class="edit" action="edit" id="${institucionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
      </fieldset>
    </g:form>
  </div>
</body>
</html>
