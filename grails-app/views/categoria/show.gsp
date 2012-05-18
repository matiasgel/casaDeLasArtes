
<%@ page import="ar.edu.untdf.Categoria" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>

  <div class="nav" role="navigation">
    <ul>

      <li><g:link class="list" action="list"><g:message code="Lista de categorías"  /></g:link></li>

    </ul>
  </div>
  <div id="show-categoria" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>

    <ul class="property-list categoria">

      <g:if test="${categoriaInstance?.nombre}">
        <li class="fieldcontain">

          <span id="nombre-label" class="property-label"><g:message code="categoria.nombre.label" default="Nombre: " /></span>
          <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${categoriaInstance}" field="nombre"/></span>
        </li>
      </g:if>

      <g:if test="${categoriaInstance?.descripcion}">
        <li class="fieldcontain">
          <span id="descripcion-label" class="property-label"><g:message code="categoria.descripcion.label" default="Descripcion: " /></span>

          <span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${categoriaInstance}" field="descripcion"/></span>

        </li>
      </g:if>



    </ul>
    <g:form>
      <fieldset class="buttons">
        <g:hiddenField name="id" value="${categoriaInstance?.id}" />
        <g:link class="edit" action="edit" id="${categoriaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
      </fieldset>
    </g:form>
  </div>
</body>
</html>
