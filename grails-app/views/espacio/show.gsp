
<%@ page import="ar.edu.untdf.Espacio" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'espacio.label', default: 'Espacio')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <!-- <a href="#show-espacio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a> -->
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
      <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
      <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
  </div>
  <div id="show-espacio" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list espacio">

      <g:if test="${espacioInstance?.nombre}">
        <li class="fieldcontain">
          <span id="nombre-label" class="property-label"><g:message code="espacio.nombre.label" default="Nombre: " /></span>

          <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${espacioInstance}" field="nombre"/></span>

        </li>
      </g:if>

      <g:if test="${espacioInstance?.calleDireccion}">
        <li class="fieldcontain">
          <span id="calleDireccion-label" class="property-label"><g:message code="espacio.calleDireccion.label" default="Calle Direccion: " /></span>

          <span class="property-value" aria-labelledby="calleDireccion-label"><g:fieldValue bean="${espacioInstance}" field="calleDireccion"/></span>

        </li>
      </g:if>

      <g:if test="${espacioInstance?.numeroDireccion}">
        <li class="fieldcontain">
          <span id="numeroDireccion-label" class="property-label"><g:message code="espacio.numeroDireccion.label" default="Numero Direccion: " /></span>

          <span class="property-value" aria-labelledby="numeroDireccion-label"><g:fieldValue bean="${espacioInstance}" field="numeroDireccion"/></span>

        </li>
      </g:if>

      <g:if test="${espacioInstance?.capacidad}">
        <li class="fieldcontain">
          <span id="capacidad-label" class="property-label"><g:message code="espacio.capacidad.label" default="Capacidad: " /></span>

          <span class="property-value" aria-labelledby="capacidad-label"><g:fieldValue bean="${espacioInstance}" field="capacidad"/></span>

        </li>
      </g:if>

      <g:if test="${espacioInstance?.latitud}">
        <li class="fieldcontain">
          <span id="latitud-label" class="property-label"><g:message code="espacio.latitud.label" default="Latitud: " /></span>

          <span class="property-value" aria-labelledby="latitud-label"><g:fieldValue bean="${espacioInstance}" field="latitud"/></span>

        </li>
      </g:if>

      <g:if test="${espacioInstance?.longitud}">
        <li class="fieldcontain">
          <span id="longitud-label" class="property-label"><g:message code="espacio.longitud.label" default="Longitud: " /></span>

          <span class="property-value" aria-labelledby="longitud-label"><g:fieldValue bean="${espacioInstance}" field="longitud"/></span>

        </li>
      </g:if>

      <g:if test="${espacioInstance?.miInstitucion}">
        <li class="fieldcontain">
          <span id="miInstitucion-label" class="property-label"><g:message code="espacio.miInstitucion.label" default="Institucion: " /></span>

          <span class="property-value" aria-labelledby="miInstitucion-label"><g:link controller="institucion" action="show" id="${espacioInstance?.miInstitucion?.id}">${espacioInstance.miInstitucion.nombre}</g:link></span>

        </li>
      </g:if>

      <g:if test="${espacioInstance?.tiposEspacios}">
        <table>
          <thead>
            <tr>

          <g:sortableColumn property="nombre" title="${message(code: 'tipoEspacio.nombre.label', default: 'Tipos de Espacios')}" />

          </tr>
          </thead>
          <tbody>
          <g:each in="${espacioInstance.tiposEspacios}" status="i" var="tipoEspacioInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

              <td><g:link controller="tipoEspacio" action="show" id="${tipoEspacioInstance.id}">${fieldValue(bean: tipoEspacioInstance, field: "nombre")}</g:link></td>

            </tr>
          </g:each>
          </tbody>
        </table>
      </g:if>

    </ol>
    <g:form>
        <g:hiddenField name="id" value="${espacioInstance?.id}" />
        <!-- <g:link class="edit" action="edit" id="${espacioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link> -->
        <g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Editar')}" />
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Eliminar')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </g:form>
  </div>
</body>
</html>
