
<%@ page import="ar.edu.untdf.Artista" %>
<!doctype html>
<html>
  <head>
    <meta name="layout" content="principal">

  </head>
  <body>
    <div id="show-artista" class="content scaffold-show" role="main">
      <ul class="property-list artista">

        <g:if test="${artistaInstance?.login}">
          <li class="fieldcontain">
            <span style="font-weight:bold" id="login-label" class="property-label"><g:message code="Nombre de usuario: " /></span>

            <span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${artistaInstance}" field="login"/></span>

          </li>
        </g:if>


        <g:if test="${artistaInstance?.nombre}">
          <li class="fieldcontain">
            <span style="font-weight:bold" id="nombre-label" class="property-label"><g:message code="Nombre:" /></span>

            <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${artistaInstance}" field="nombre"/></span>

          </li>
        </g:if>

        <g:if test="${artistaInstance?.apellido}">
          <li class="fieldcontain">
            <span style="font-weight:bold" id="apellido-label" class="property-label"><g:message code="Apellido:" /></span>

            <span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${artistaInstance}" field="apellido"/></span>

          </li>
        </g:if>

        <g:if test="${artistaInstance?.email}">
          <li class="fieldcontain">
            <span style="font-weight:bold" id="email-label" class="property-label"><g:message code="Email: " /></span>

            <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${artistaInstance}" field="email"/></span>

          </li>
        </g:if>

        <g:if test="${artistaInstance?.categorias}">
          <li class="fieldcontain">
            <span id="categorias-label" class="property-label"><g:message code="artista.categorias.label" default="Categorias" /></span>

          <g:each in="${artistaInstance.categorias}" var="c">
            <span class="property-value" aria-labelledby="categorias-label"><g:link controller="categoria" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
          </g:each>

          </li>
        </g:if>



        <g:if test="${artistaInstance?.telefono}">
          <li class="fieldcontain">
            <span style="font-weight:bold" id="telefono-label" class="property-label"><g:message code="Telefono: " /></span>

            <span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${artistaInstance}" field="telefono"/></span>

          </li>
        </g:if>
        <li class="fieldcontain">
        <g:link controller="artista" action="seleccionarCategoria" id="${artistaInstance?.id}">Categorias</g:link>
        </li>
        <li class="fieldcontain">
        <g:link controller="artista" action="listarObrasArtista" id="${artistaInstance?.id}">Obras</g:link>
        </li>

      </ul>
      </div>
    <div>
      <g:form>
        <g:hiddenField name="id" value="${artistaInstance?.id}" />
        <g:link style ="font-size: 11pt" class="edit" action="edit" id="${artistaInstance?.id}"><g:message code="Editar datos" /></g:link></br>
        <g:link style ="font-size: 11pt" action="cambiarPass" id="${artistaInstance?.id}"><g:message code="Cambiar contraseña" /></g:link>
        <div style="float: right">
        <g:actionSubmit class="delete" action="delete" value="Eliminar mi usuario" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </div>
      </g:form>
    </div>
  </body>
</html>