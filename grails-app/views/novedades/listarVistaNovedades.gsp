<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>  
  <body>
  <g:each in="${novedades}" var="prmNovedad">
    <div>
      <g:link action="show" id="${prmNovedad.id}">${prmNovedad.cuerpo}
      </g:link>
    </div>     
  </g:each>
</body>
</html>