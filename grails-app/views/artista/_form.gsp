<%@ page import="ar.edu.untdf.Artista" %>



<div style="margin: 4px">
  <div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'login', 'error')} required">
    <label for="login">
      <g:message code="Nombre de usuario" />
      <span class="required-indicator">*</span>
    </label>
    <g:textField name="login" maxlength="15" required="" value="${artistaInstance?.login}"/>
  </div>

  <div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'password', 'error')} required">
    <label for="password">
      <g:message code="Contraseña" />
      <span class="required-indicator">*</span>
    </label>
    <g:passwordField type="password" name="password" maxlength="15" required="" value=""/>
  </div>

  <div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'password', 'error')} required">
    <label for="confirmapass">
      <g:message code="Confirmar contraseña" />
      <span class="required-indicator">*</span>
    </label>
    <g:passwordField name="confirmapass" maxlength="15" value=""/>
  </div>

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
</div>

