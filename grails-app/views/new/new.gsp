<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>prueba password</title>
  </head>
  <body>
  prueba: ${message}
  <g:form method="post" action="guardar">
    <fieldset class="form">
          Nombre:
	<g:textField name="nombre" value=""/>
        Clave:
        <g:passwordField name="pass" value=""/>
    </fieldset>
    <fieldset class="buttons">
      <g:actionSubmit class="save" value="guardar" />
    </fieldset>
  </g:form>
</body>
</html>
