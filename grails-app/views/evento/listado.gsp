<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
</head>
<body>
<g:if test="${eventos}">
  <g:each in="${eventos}" var="eventoInstance">
    </br>
    <h4>
      <g:link controller="evento" action="show" id="${eventoInstance.id}">${eventoInstance.nombre}</g:link>
    </h4>    
  </g:each>
</g:if>
<g:else>
  </br>
  <h4>
    No hay eventos disponibles
  </h4>
</g:else>
</body>
</html>
