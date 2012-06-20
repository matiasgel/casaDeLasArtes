<%@ page import="ar.edu.untdf.Institucion" %>


<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'nombre', 'error')} ">
  <label for="nombre">
    <g:message code="institucion.nombre.label" default="Nombre" />

  </label>
  <g:textField name="nombre" required="" value="${institucionInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'tipoGestion', 'error')} ">
  <label for="tipoGestion">
    <g:message code="institucion.tipoGestion.label" default="Tipo" />

  </label>
  <g:select id="tipoGestion" name="tipoGestion" from="${['Privada', 'Publica']}" value="${institucionInstance?.tipoGestion}"/>
</div>

<h4>Datos del Contacto</h4>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'miContacto.apellido', 'error')} ">
  <label for="miContacto.apellido">
    <g:message code="institucion.miContacto.apellido.label" default="Apellido" />

  </label>
  <g:textField name="miContacto.apellido" required="" value="${institucionInstance?.miContacto?.apellido}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'miContacto.nombre', 'error')} ">
  <label for="miContacto.nombre">
    <g:message code="institucion.miContacto.nombre.label" default="Nombre " />

  </label>
<g:textField name="miContacto.nombre" required="" value="${institucionInstance?.miContacto?.nombre}"/></p>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'miContacto.email', 'error')} ">
  <label for="miContacto.email">
    <g:message code="institucion.miContacto.email.label" default="Email" />

  </label>
<g:textField name="miContacto.email" required="" value="${institucionInstance?.miContacto?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'miContacto.email', 'error')} ">
  <label for="miContacto.telefono">
    <g:message code="institucion.miContacto.telefono.label" default="Telefono" />

  </label>
  <g:textField name="miContacto.telefono" required="" value="${institucionInstance?.miContacto?.telefono}"/>
</div>

<!--
<div class="fieldcontain ${hasErrors(bean: institucionInstance, field: 'espacios', 'error')} ">
        <label for="espacios">
                <g:message code="institucion.espacios.label" default="Espacios" />
                
        </label>
        <g:select id="espacios" name="espacios.id" from="${ar.edu.untdf.Espacio.list()}" optionKey="id" required="" value="${proyectoInstance?.espacios?.id}" class="many-to-one"/>
        <g:link controller="espacio" action="create">Agregar Espacio</g:link>
</div>
-->

