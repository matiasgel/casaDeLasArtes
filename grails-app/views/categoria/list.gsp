
<%@ page import="ar.edu.untdf.Categoria" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
  <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>



  <div id="list-categoria" class="content scaffold-list" role="main">
    <h1><g:message code="Lista de categorías" /></h1>

    <table>
      <thead>
        <tr>
      <g:sortableColumn property="nombre" title="${message(code: 'categoria.nombre.label', default: 'Nombre')}" />
      <g:sortableColumn property="descripcion" title="${message(code: 'categoria.descripcion.label', default: 'Descripcion')}" />



      </tr>
      </thead>
      <tbody>
      <g:each in="${categoriaInstanceList}" status="i" var="categoriaInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
          <td>${fieldValue(bean: categoriaInstance, field: "nombre")}</td>
          <td><g:link action="show" id="${categoriaInstance.id}">${fieldValue(bean: categoriaInstance, field: "descripcion")}</g:link></td>
        </tr>
      </g:each>
      </tbody>
    </table>
    <div class="pagination">
      <g:paginate total="${categoriaInstanceTotal}" />
    </div>
  </div>
  <div class="nav" role="navigation">
    <h2><g:link class="create" action="create"><g:message code="Crear nueva categoria"/></g:link></h2>			
  </div>
</body>
</html>
