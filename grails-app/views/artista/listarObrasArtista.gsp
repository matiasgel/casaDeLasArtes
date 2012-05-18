<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta name="layout" content="principal">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Mis obras: ${artistaInstance.nombre}</title>
  </head>
  <body>
    <div>
      
        <g:include controller="obra" action="listarObras" id="${artistaInstance.id}"></g:include>  
       
    </div>
    <div>
      <g:link controller="obra" action="add" id="${[artista:artistaInstance]}">Agregar obras</g:link>
    </div>
  </body>
</html>
