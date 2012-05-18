<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <body>
    <div class="main-content">
      <h1><g:message code="Obras"/></h1>
    </div>
    <div>
      <g:each in="${obrasArtista.obras}" var="obras">
        <h4>${obras.nombre}</h4>
      </g:each>
    </div>    
  </body>
</html>
