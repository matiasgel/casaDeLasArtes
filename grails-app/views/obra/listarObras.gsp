<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <style type="text/css">
      div.float {
        float: left;
      }

      div.float p {
        text-align: center;
      }
    </style>
  <body>    
    <div class="main-content">
      <h1><g:message code="Obras"/></h1>
    </div>    
      <g:each in="${obrasArtista.obras}" var="obras">
        <div class="float">
          <g:link action="mostrar" controller="obra" id="${obras?.id}"><img width="150" height="150" src="${createLinkTo(dir: 'images/pagina', file: obras.pathImagen)}" alt="${obras.nombre}" /></g:link>
          <p>${obras.descripcion}</p>
        </div>
      </g:each>        
  </body>
</html>
