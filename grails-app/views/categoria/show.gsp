
<%@ page import="ar.edu.untdf.Categoria" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">
  <g:set var="entityName" value="${message(code: 'categoria.label', default: 'Categoria')}" />
  <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <h1>${categoriaInstance?.nombre}</h1>
  <br>  
  <div class="nav" role="navigation"> 
      <h4>Obras de la categoria actual</h4>
      <g:include controller="categoria" action="listarObrasxCategoria" id="${categoriaInstance.id}"></g:include>         
    </div>
 <div class="nav" role="navigation"> 
      <h4>Artistas de la categoria actual</h4>
      <g:include controller="artista" action="listaParaUsuario" id="${categoriaInstance.id}"></g:include>         
    </div>
    <g:if test="${session.user!=null}">
    <g:form >
      <fieldset class="buttons">
        <g:hiddenField name="id" value="${categoriaInstance?.id}" />
        <g:link style="float: left" action="list" id="${id}">Volver al listado completo</g:link>
        <g:actionSubmit style="float: right" class="delete" action="delete" value="Borrar Categoria" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
      </fieldset>
     </g:form>
    </g:if>
</body>
</html>
