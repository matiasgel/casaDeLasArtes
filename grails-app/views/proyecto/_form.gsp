<%@ page import="ar.edu.untdf.Proyecto" %>



<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'nombre', 'error')} required">
  <label for="nombre">
    <g:message code="proyecto.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
  <g:textField name="nombre" required="" value="${proyectoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'resumen', 'error')} required">
  <label for="resumen">
    <g:message code="proyecto.resumen.label" default="Resumen" />
    <span class="required-indicator">*</span>
  </label>
  <g:textArea name="resumen" cols="40" rows="5" maxlength="500" required="" value="${proyectoInstance?.resumen}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'miContacto', 'error')} ">
  <h4>Datos del Contacto</h4>

  <p><label for="miContacto.apellido">
      <g:message code="proyecto.miContacto.apellido.label" default="Apellido" />
      <span class="required-indicator">*</span>
    </label>
  <g:textField name="miContacto.apellido" value="${proyectoInstance?.miContacto?.apellido}"/></p>

<p><label for="miContacto.nombre">
    <g:message code="proyecto.miContacto.nombre.label" default="Nombre" />
    <span class="required-indicator">*</span>
  </label>
<g:textField name="miContacto.nombre" value="${proyectoInstance?.miContacto?.nombre}"/></p>

<p><label for="miContacto.email">
    <g:message code="proyecto.miContacto.email.label" default="Email" />
    <span class="required-indicator">*</span>
  </label>
<g:textField name="miContacto.email" value="${proyectoInstance?.miContacto?.email}"/></p>

<p><label for="miContacto.telefono">
    <g:message code="proyecto.miContacto.telefono.label" default="Telefono" />
    <span class="required-indicator">*</span>
  </label>
<g:textField name="miContacto.telefono" value="${proyectoInstance?.miContacto?.telefono}"/></p>
</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'misEventos', 'error')} ">
  <label for="misEventos">
    <g:message code="proyecto.misEventos.label" default="Mis Eventos" />

  </label>

  <ul class="one-to-many">
    <g:each in="${proyectoInstance?.misEventos?}" var="m">
      <li><g:link controller="evento" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
    </g:each>
    <li class="add">
    <g:link controller="evento" action="create" params="['proyecto.id': proyectoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'evento.label', default: 'Evento')])}</g:link>
    </li>
  </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: proyectoInstance, field: 'valido', 'error')} ">
  <label for="valido">
    <g:message code="proyecto.valido.label" default="Valido" />

  </label>
  <g:checkBox name="valido" value="${proyectoInstance?.valido}" />
</div>

