<%@ page import="ar.edu.untdf.Institucion" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<g:if test="${instituciones}">
  <h1 style="color: #008080;" align="center"><b>Instituciones Registradas</b></h1>
  <g:each in="${instituciones}" var="institucionInstance">
    <div style="color: #008080;">
    <h1 style="color: grey;">${institucionInstance.nombre}</h1>
    Tipo de gestión: <b>${institucionInstance.tipoGestion}</b>
    </br>
    Contacto: <b>${institucionInstance.miContacto.apellido}, ${institucionInstance.miContacto.nombre}</b>
    </br>
    Email: <b>${institucionInstance.miContacto.email}</b>
    </br>
    Telefono: <b>${institucionInstance.miContacto.telefono}</b>
</div>
  </g:each>
</g:if>
<g:else>
  <h4>No hay INSTITUCIONES registradas</h4>
</g:else>
</body>
</html>
