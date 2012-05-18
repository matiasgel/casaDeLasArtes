<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>  
  <body>
  <g:each in="${categorias}" var="cat">
    <div>${cat.nombre}</div>     
  </g:each>
</body>
</html>
