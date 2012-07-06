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
    <div>      
      <g:include controller="obra" action="listarObras" id="${categoriaInstance.id}" params="[tipo: 'categoria']"></g:include>         
    </div>
  </body>
</html>
