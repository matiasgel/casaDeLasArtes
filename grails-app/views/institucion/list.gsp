
<%@ page import="ar.edu.untdf.Institucion" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="admin">
  <g:set var="entityName" value="${message(code: 'institucion.label', default: 'Institucion')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
  <div id="list-institucion" class="content scaffold-list" role="main">
    <h1 align="center">Listado de instituciones</h1>
    <g:form>
      </br>
      <g:actionSubmit class="create" action="create" value="Nueva institución" />
    </g:form>
    <table>
      <thead>
        <tr>

      <g:sortableColumn property="nombre" title="${message(code: 'institucion.nombre.label', default: 'Nombre')}" />

      <g:sortableColumn property="tipoGestion" title="${message(code: 'institucion.tipoGestion.label', default: 'Tipo Gestion')}" />

      </tr>
      </thead>
      <tbody>
      <g:each in="${institucionInstanceList}" status="i" var="institucionInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

          <td><g:link action="show" id="${institucionInstance.id}">${fieldValue(bean: institucionInstance, field: "nombre")}</g:link></td>

        <td>${fieldValue(bean: institucionInstance, field: "tipoGestion")}</td>

        </tr>
      </g:each>
      </tbody>
    </table>
    <div class="pagination">
      <g:paginate total="${institucionInstanceTotal}" />
    </div>
  </div>
</body>
</html>
