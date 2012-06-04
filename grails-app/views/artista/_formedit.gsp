<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<div style="margin: 4px">
  
  <div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'nombre', 'error')} required">
    <label for="nombre">
      <g:message code="artista.nombre.label" default="Nombre" />
      <span class="required-indicator">*</span>
    </label>
    <g:textField name="nombre" maxlength="20" required="" value="${artistaInstance?.nombre}"/>
  </div>

  <div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'apellido', 'error')} required">
    <label for="apellido">
      <g:message code="artista.apellido.label" default="Apellido" />
      <span class="required-indicator">*</span>
    </label>
    <g:textField name="apellido" maxlength="15" required="" value="${artistaInstance?.apellido}"/>
  </div>

  <div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'email', 'error')} required">
    <label for="email">
      <g:message code="artista.email.label" default="Email" />
      <span class="required-indicator">*</span>
    </label>
    <g:field type="email" name="email" required="" value="${artistaInstance?.email}"/>
  </div>

  <div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'telefono', 'error')} required">
    <label for="telefono">
      <g:message code="artista.telefono.label" default="Telefono" />
      <span class="required-indicator">*</span>
    </label>
    <g:field type="number" name="telefono" required="" value="${fieldValue(bean: artistaInstance, field: 'telefono')}"/>
  </div>
  
  <div class="fieldcontain required">
    <label for="password">
      <g:message code="Contraseña " />
      <span class="required-indicator">*</span>
    </label>
    <g:passwordField type="password" name="pass" maxlength="15" required="" value=""/>
  </div>
  
</div>


