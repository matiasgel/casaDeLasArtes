<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html> 
  <head>
    <meta name="layout" content="principal">

  </head>
  <body>
  <g:each in="${categorias}" var="cat">
    <div><g:link action="show" id="${cat.id}">${cat.nombre}</g:link></div>     
  </g:each>
</body>
</html>
