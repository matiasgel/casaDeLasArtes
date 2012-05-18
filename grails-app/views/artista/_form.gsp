<%@ page import="ar.edu.untdf.Artista" %>



<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="artista.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" maxlength="15" required="" value="${artistaInstance?.login}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="artista.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField type="password" name="password" maxlength="15" required="" value="${artistaInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'password', 'error')} required">
	<label for="confirmapass">
		<g:message code="Confirmar password" />
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

<!--<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'categorias', 'error')} ">
	<label for="categorias">
		<g:message code="artista.categorias.label" default="Categorias" />
		
	</label>
	<g:select name="categorias" from="${ar.edu.untdf.Categoria.list()}" multiple="multiple" optionKey="id" size="5" value="${artistaInstance?.categorias*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'obras', 'error')} ">
	<label for="obras">
		<g:message code="artista.obras.label" default="Obras" />
		
	</label>
	<g:select name="obras" from="${ar.edu.untdf.Obra.list()}" multiple="multiple" optionKey="id" size="5" value="${artistaInstance?.obras*.id}" class="many-to-many"/>
</div>-->

<div class="fieldcontain ${hasErrors(bean: artistaInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="artista.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="telefono" required="" value="${fieldValue(bean: artistaInstance, field: 'telefono')}"/>
</div>

