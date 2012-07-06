
<%@ page import="ar.edu.untdf.Categoria" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">  
  <title>Categorias disponibles</title>
</head>
<body>



  <div id="list-categoria" class="content scaffold-list" role="main">
    <h1><g:message code="Lista de categorías" /></h1>
      (haga click para seleccionar una)
    <table>
      <thead>
        <tr>
          <th>Categoria</th>
          <th>Descripcion</th>
      </tr>
      </thead>
      <tbody>
      <g:each in="${categoriaInstanceList}" status="i" var="categoriaInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
          <td><g:link action="show" id="${categoriaInstance.id}">${fieldValue(bean: categoriaInstance, field: "nombre")}</g:link></td>
        <td>${fieldValue(bean: categoriaInstance, field: "descripcion")}</td>
        </tr>
      </g:each>
      </tbody>
    </table>
    <div class="pagination">
      <g:paginate total="${categoriaInstanceTotal}" />
    </div>
  </div>
<g:if test="${session.user!=null}">
  <div class="nav" role="navigation">
    <h2><g:link class="create" action="create"><g:message code="Crear nueva categoria"/></g:link></h2>			
  </div>
</g:if>
</body>
</html>
