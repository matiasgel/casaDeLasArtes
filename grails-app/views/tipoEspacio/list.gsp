
<%@ page import="ar.edu.untdf.TipoEspacio" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="admin">
  <g:set var="entityName" value="${message(code: 'tipoEspacio.label', default: 'TipoEspacio')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
  <div id="list-tipoEspacio" class="content scaffold-list" role="main">
    <h1 align="center">Listado de tipos de espacios</h1>

    <g:form>
      <g:actionSubmit class="create" action="create" value="Nuevo tipo de espacio" />
    </g:form>

    <table>
      <thead>
        <tr>

      <g:sortableColumn property="nombre" title="${message(code: 'tipoEspacio.nombre.label', default: 'Nombre')}" />

      <g:sortableColumn property="descripcion" title="${message(code: 'tipoEspacio.descripcion.label', default: 'Descripcion')}" />

      </tr>
      </thead>
      <tbody>
      <g:each in="${tipoEspacioInstanceList}" status="i" var="tipoEspacioInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

          <td><g:link action="show" id="${tipoEspacioInstance.id}">${fieldValue(bean: tipoEspacioInstance, field: "nombre")}</g:link></td>

        <td>${fieldValue(bean: tipoEspacioInstance, field: "descripcion")}</td>
        </tr>
      </g:each>
      </tbody>
    </table>
    <div class="pagination">
      <g:paginate total="${tipoEspacioInstanceTotal}" />
    </div>
  </div>
</body>
</html>
