<%@ page import="ar.edu.untdf.Institucion" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
  <body>
<g:if test="${institucionInstanceList}">
    <g:each in="${institucionInstanceList}" var="institucionInstance">
      <g:if test="${institucionInstance?.espacios}">
        <g:each in="${institucionInstance.espacios}" var="espacioInstance">

          <h4><g:link controller="espacio" action="show" id="${espacioInstance.id}">${espacioInstance.nombre}</g:link></h4>
          <!--
          <g:if test="${espacioInstance?.nombre}">
            <li class="fieldcontain">
              <span id="nombre-label" class="property-label"><g:message code="espacio.nombre.label" default="Nombre: " /></span>

              <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${espacioInstance}" field="nombre"/></span>

            </li>
          </g:if>
          -->

          <g:if test="${espacioInstance?.calleDireccion}">
            <li class="fieldcontain">
              <span id="calleDireccion-label" class="property-label"><g:message code="espacio.calleDireccion.label" default="Calle: " /></span>

              <span class="property-value" aria-labelledby="calleDireccion-label"><g:fieldValue bean="${espacioInstance}" field="calleDireccion"/></span>

            </li>
          </g:if>

          <g:if test="${espacioInstance?.numeroDireccion}">
            <li class="fieldcontain">
              <span id="numeroDireccion-label" class="property-label"><g:message code="espacio.numeroDireccion.label" default="Num: " /></span>

              <span class="property-value" aria-labelledby="numeroDireccion-label"><g:fieldValue bean="${espacioInstance}" field="numeroDireccion"/></span>

            </li>
          </g:if>

          <g:if test="${espacioInstance?.capacidad}">
            <li class="fieldcontain">
              <span id="capacidad-label" class="property-label"><g:message code="espacio.capacidad.label" default="Capacidad: " /></span>

              <span class="property-value" aria-labelledby="capacidad-label"><g:fieldValue bean="${espacioInstance}" field="capacidad"/></span>

            </li>
          </g:if>
          <g:if test="${espacioInstance?.miInstitucion}">
            <li class="fieldcontain">
              <span id="miInstitucion-label" class="property-label"><g:message code="espacio.miInstitucion.label" default="Pertenece a: " /></span>

              <span class="property-value" aria-labelledby="miInstitucion-label"><g:link controller="institucion" action="show" id="${espacioInstance?.miInstitucion?.id}">${espacioInstance.miInstitucion.nombre}</g:link></span>

            </li>
          </g:if>
        </g:each>
      </g:if>
    </g:each>
</g:if>
  <g:else>
    <h4>Ha ocurrido un error, no hay espacios registrados</h4>
  </g:else>
</body>
</html>
