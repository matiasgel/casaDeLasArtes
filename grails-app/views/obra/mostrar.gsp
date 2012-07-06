<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta name="layout" content="principal">
    <title><g:message code="Obra" /></title>
  </head>
  <body>
    <div class="main-content">
      <div><img width="90%" height="90%" src="${createLinkTo(dir: 'images/pagina', file: obraInstance.pathImagen)}" alt="${obraInstance?.nombre}" /></div>
      <div><p style="text-align: center">${obraInstance.descripcion}</p></div>
    </div>
  </body>
</html>
