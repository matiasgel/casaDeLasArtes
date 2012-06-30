<%@ page import="ar.edu.untdf.Espacio" %>



<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="espacio.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${espacioInstance?.nombre}"/>
</div>

<br/>
<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'calleDireccion', 'error')} required">
	<label for="calleDireccion">
		<g:message code="espacio.calleDireccion.label" default="Calle Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calleDireccion" required="" value="${espacioInstance?.calleDireccion}"/>
</div>

<br/>
<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'numeroDireccion', 'error')} required">
	<label for="numeroDireccion">
		<g:message code="espacio.numeroDireccion.label" default="Numero Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="numeroDireccion" required="" value="${fieldValue(bean: espacioInstance, field: 'numeroDireccion')}"/>
</div>

<br/>
<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'capacidad', 'error')} required">
	<label for="capacidad">
		<g:message code="espacio.capacidad.label" default="Capacidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="capacidad" required="" value="${fieldValue(bean: espacioInstance, field: 'capacidad')}"/>
</div>

<br/>
<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'latitud', 'error')} required">
	<label for="latitud">
		<g:message code="espacio.latitud.label" default="Latitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="latitud" required="" value="${fieldValue(bean: espacioInstance, field: 'latitud')}"/>
</div>

<br/>
<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'longitud', 'error')} required">
	<label for="longitud">
		<g:message code="espacio.longitud.label" default="Longitud" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="longitud" required="" value="${fieldValue(bean: espacioInstance, field: 'longitud')}"/>
</div>

<br/>
<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'miInstitucion', 'error')} required">
	<label for="miInstitucion">
		<g:message code="espacio.miInstitucion.label" default="Mi Institucion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="miInstitucion" name="miInstitucion.id" from="${ar.edu.untdf.Institucion.list()}" optionKey="id" optionValue="nombre"required="" value="${espacioInstance?.miInstitucion?.id}" class="many-to-one"/>
</div>

<br/>
<div class="fieldcontain ${hasErrors(bean: espacioInstance, field: 'tiposEspacios', 'error')} ">
	<label for="tiposEspacios">
		<g:message code="espacio.tiposEspacios.label" default="Tipos Espacios" />
		
	</label>
	<g:select name="tiposEspacios" from="${ar.edu.untdf.TipoEspacio.list()}" multiple="multiple" optionKey="id" optionValue="nombre"size="5" value="${espacioInstance?.tiposEspacios*.id}" class="many-to-many"/>
</div>

