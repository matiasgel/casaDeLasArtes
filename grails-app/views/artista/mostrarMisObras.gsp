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
    <div >
    <g:include controller="obra" action="mostrar" id="${obraInstance.id}"></g:include>
    </div>
    <div>
    <g:form controller="obra">
        <g:hiddenField name="id" value="${obraInstance?.id}" />
        
        <div style="float: right">
          <g:actionSubmit  action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </div>
      </g:form>
  </div>
  </body>
</html>
