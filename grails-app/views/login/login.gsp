
<script type="text/javascript">
 $("login").click(function(){ 
  $("login_dialog").dialog()
});
</script>
<div id="login_dialog">
  
</div>
<g:if test="${session.user!=null}">
                <li><g:link controller="artista" action="show" id="${session.user.id}" title="Editar datos de mi cuenta">Mi cuenta</a></g:link>>
                  <li><a href="#" title="Get an overview of website">Mis proyectos</a></li>
                  <li><g:link style="color: blue" controller="login" action="logout" title="Salir de la cuenta">Logout</g:link>></li>
              </g:if>            
              <g:else>
                <li><a style="color: blue" id="login" href="${createLink(uri: '/login/index')}" title="Entrar con mis datos">Login</a></li>
                <li><g:link style="color: blue" controller="artista" action="registrar" title="Registrame como un artista">Registrarme</g:link>></li>
 </g:else> 