<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta name="layout" content="principal">
    <title>Cambiar contraseña</title>
  </head>
  <body>
    <div role="main">
      <h1>Cambiar mi contraseña</h1>
      <g:form action="cambiarPass" name="cambiarPass">
        <g:hiddenField name="id" value="${artistaInstance?.id}" />
        <fieldset >
          <g:render template="pass"/>
        </fieldset>
        <fieldset class="buttons">
          <g:submitButton name="aceptar" value="Aceptar" />
        </fieldset>
      </g:form>
    </div>
  </body>
</html>
