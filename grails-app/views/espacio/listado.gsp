<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'espacio.label', default: 'Espacio')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<g:if test="${espacios}">
  <h1 style="color: #008080;" align="center"><b>Espacios Registrados</b></h1>
  <g:each in="${espacios}" var="espaciosInstance">
    <div style="color: #008080;">
      <h1 style="color: grey;">${espaciosInstance.nombre}</h1>
      </br>
      Dirección: <b>${espaciosInstance.calleDireccion}, ${espaciosInstance.numeroDireccion}</b>
      </br>
      Capacidad: <b>${espaciosInstance.capacidad}</b>
      </br>
      Pertenece a: <b>${espaciosInstance.miInstitucion.nombre}</b>
    </div>
  </g:each>
</g:if>
<g:else>
  <h4>No hay ESPACIOS registrados</h4>
</g:else>
</body>
</html>
