<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>  
  <head>
    <meta name="layout" content="principal">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <h1>Categorias disponibles</h1>
    <p>(seleccionar la/s categorias deseadas)</p>
    <div>
      <g:form> 
        <g:hiddenField name="id" value="${artistaInstance?.id}" />
        <g:each in="${categorias}" var="cat" status="i">
          <div style="font-size: 14px">
            <g:checkBox name="catsElegidas" value="${cat.id}" checked="${artistaInstance?.categorias[i]?.id}"/> ${cat.nombre}</div>     
        </g:each>
        </br>
        <g:actionSubmit action="seleccionarCategoria" value="Actualizar" onclick="return confirm('Actulizar lista de categorias???')"/>
      </g:form>
    </div>
    ${artistaInstance.nombre}
  </body>
</html>
