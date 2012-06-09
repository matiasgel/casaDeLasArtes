<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'password', 'error')} required">
    <label for="password">
      <g:message code="Contraseña actual" />
      <span class="required-indicator">*</span>
    </label>
    <g:passwordField type="password" name="password" maxlength="15" required="" value=""/>
  </div>

<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'password', 'error')} required">
    <label for="nuevapass">
      <g:message code="Nueva contraseña" />
      <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="nuevapass" maxlength="15" required="" value=""/>
  </div>

  <div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'password', 'error')} required">
    <label for="confirmapass">
      <g:message code="Confirmar nueva contraseña" />
      <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="confirmapass" maxlength="15" value=""/>
  </div>
