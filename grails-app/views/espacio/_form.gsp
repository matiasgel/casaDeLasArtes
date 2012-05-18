<%@ page import="ar.edu.untdf.Espacio" %>



<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'capacidad', 'error')} required">
	<label for="capacidad">
		<g:message code="espacio.capacidad.label" default="Capacidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="capacidad" required="" value="${fieldValue(bean: espacioInstance, field: 'capacidad')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'latitud', 'error')} required">
	<label for="latitud">
		<g:message code="espacio.latitud.label" default="Latitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="latitud" required="" value="${fieldValue(bean: espacioInstance, field: 'latitud')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'longitud', 'error')} required">
	<label for="longitud">
		<g:message code="espacio.longitud.label" default="Longitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="longitud" required="" value="${fieldValue(bean: espacioInstance, field: 'longitud')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'miInstitucion', 'error')} required">
	<label for="miInstitucion">
		<g:message code="espacio.miInstitucion.label"
                           default="Institucion" />
		<span class="required-indicator">*</span>
	</label>
        <g:select name="espacio.institucion.nombre"
                  from="${ar.edu.untdf.Institucion.list()}"
                  value="${espacioInstance?.miInstitucion.nombre}"
                  optionKey="nombre" />
</div>

