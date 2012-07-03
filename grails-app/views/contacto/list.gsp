
<%@ page import="ar.edu.untdf.Contacto" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="admin">
  <g:set var="entityName" value="${message(code: 'contacto.label', default: 'Contacto')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
  <div id="list-contacto" class="content scaffold-list" role="main">
    <h1 align="center">Listado de contactos</h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
      <thead>
        <tr>

      <g:sortableColumn property="apellido" title="${message(code: 'contacto.apellido.label', default: 'Apellido')}" />

      <g:sortableColumn property="nombre" title="${message(code: 'contacto.nombre.label', default: 'Nombre')}" />

      </tr>
      </thead>
      <tbody>
      <g:each in="${contactoInstanceList}" status="i" var="contactoInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

          <td><g:link action="show" id="${contactoInstance.id}">${fieldValue(bean: contactoInstance, field: "apellido")}</g:link></td>

        <td>${fieldValue(bean: contactoInstance, field: "nombre")}</td>

        </tr>
      </g:each>
      </tbody>
    </table>
    <div class="pagination">
      <g:paginate total="${contactoInstanceTotal}" />
    </div>
  </div>
</body>
</html>
