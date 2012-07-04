
<%@ page import="ar.edu.untdf.Espacio" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="admin">
  <g:set var="entityName" value="${message(code: 'espacio.label', default: 'Espacio')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
  <div id="list-espacio" class="content scaffold-list" role="main">
    <h1 align="center">Listado de espacios</h1>

    <g:form>
      <g:actionSubmit class="create" action="create" value="Nuevo espacio" />
    </g:form>

    <table>
      <thead>
        <tr>

      <g:sortableColumn property="nombre" title="${message(code: 'espacio.nombre.label', default: 'Nombre')}" />

      <g:sortableColumn property="calleDireccion" title="${message(code: 'espacio.calleDireccion.label', default: 'Calle Direccion')}" />

      <g:sortableColumn property="numeroDireccion" title="${message(code: 'espacio.numeroDireccion.label', default: 'Numero Direccion')}" />

      </tr>
      </thead>
      <tbody>
      <g:each in="${espacioInstanceList}" status="i" var="espacioInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

          <td><g:link action="show" id="${espacioInstance.id}">${fieldValue(bean: espacioInstance, field: "nombre")}</g:link></td>

        <td>${fieldValue(bean: espacioInstance, field: "calleDireccion")}</td>

        <td>${fieldValue(bean: espacioInstance, field: "numeroDireccion")}</td>

        </tr>
      </g:each>
      </tbody>
    </table>
    <div class="pagination">
      <g:paginate total="${espacioInstanceTotal}" />
    </div>
  </div>
</body>
</html>
