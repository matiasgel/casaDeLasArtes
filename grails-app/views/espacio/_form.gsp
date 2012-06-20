<%@ page import="ar.edu.untdf.Espacio" %>



<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="espacio.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${espacioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'Domicilio', 'error')} required">
	<label for="calleDireccion">
		<g:message code="espacio.calleDireccion.label" default="Domicilio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calleDireccion" required="" value="${espacioInstance?.calleDireccion}"/>

        <label for="numeroDireccion">
		<g:message code="espacio.numeroDireccion.label" default="Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="numeroDireccion" required="" value="${fieldValue(bean: espacioInstance, field: 'numeroDireccion')}"/>
</div>

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
	<g:field type="number" name="latitud" value="${fieldValue(bean: espacioInstance, field: 'latitud')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'longitud', 'error')} required">
	<label for="longitud">
		<g:message code="espacio.longitud.label" default="Longitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="longitud" value="${fieldValue(bean: espacioInstance, field: 'longitud')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'miInstitucion', 'error')} required">
	<label for="miInstitucion">
		<g:message code="espacio.miInstitucion.label" default="Institucion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miInstitucion" name="miInstitucion.id" from="${ar.edu.untdf.Institucion.list()}" optionKey="id" value="${espacioInstance?.miInstitucion?.id}" class="many-to-one" optionValue="nombre"/>
</div>

<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'tiposEspacios', 'error')} ">
	<label for="tiposEspacios">
		<g:message code="espacio.tiposEspacios.label" default="Tipos Espacios" />
		
	</label>
	<g:select id="tiposEspacios" name="tiposEspacios.nombre" from="${ar.edu.untdf.TipoEspacio.list()}" optionKey="id" required="" value="${espacioInstance?.tiposEspacios?.id}" class="many-to-one" multiple="true" optionValue="nombre"/>
</div>

