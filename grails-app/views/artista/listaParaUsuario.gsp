<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  
<body>
  <div id="list-artista" class="content scaffold-list" role="main">    
    <g:if test="${flash.message}">
      <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
      <thead>
        <tr>
      <th>Nombre</th>
      <th>Apellido</th>
      <th>E-mail</th>
      <th>Obras</th>
      </tr>
      </thead>
      <tbody>
      <g:each in="${artistaInstanceList}" status="i" var="artistaInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}"> 
          <td>${fieldValue(bean: artistaInstance, field: "nombre")}</td>
          <td>${fieldValue(bean: artistaInstance, field: "apellido")}</td>
          <td>${fieldValue(bean: artistaInstance, field: "email")}</td>
          <td><g:link action="listarObrasArtista" id="artistaInstance?.id">Ver todas las obras</g:link></td>
        </tr>
      </g:each>
      </tbody>
    </table>
    <div class="pagination">
      <g:paginate total="${artistaInstanceTotal}" />
    </div>
  </div>
</body>
</html>

