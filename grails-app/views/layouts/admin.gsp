<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

  <!--  Version: Multiflex-3 Update-2 / Overview             -->
  <!--  Date:    November 29, 2006                           -->
  <!--  Author:  G. Wolfgang                                 -->
  <!--  License: Fully open source without restrictions.     -->
  <!--           Please keep footer credits with a link to   -->
  <!--           G. Wolfgang (www.1-2-3-4.info). Thank you!  -->

  <head>
    <<r:require module="jquery-ui"/>

    <g:javascript library="jquery" />

    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="3600" />
    <meta name="revisit-after" content="2 days" />
    <meta name="robots" content="index,follow" />
    <meta name="keywords" content="Your keywords, keywords, keywords, here ..." />
    <link rel="stylesheet" type="text/css" media="screen,projection,print" href="${resource(dir: 'admin/css', file: 'layout4_setup.css')}" />
    <link rel="stylesheet" type="text/css" media="screen,projection,print" href="${resource(dir: 'admin/css', file: 'layout4_text.css')}" />
    <link rel="icon" type="image/x-icon" href="./img/favicon.ico" />
    <r:layoutResources />
    <title><g:layoutTitle default="Casa de las Artes"/></title>
  </head>


  <body>

    <div class="page-container">

      <!-- For alternative headers START PASTE here -->

      <!-- A. HEADER -->      
      <div class="header">

        <!-- A.1 HEADER TOP -->
        <div class="header-top">

          <!-- Sitelogo and sitename -->
          <a class="sitelogo" href="#" title="Go to Start page"></a>
          <div class="sitename">
            <h1><a href="${createLink(uri: '/')}" title="Ir a la página principal">CASA DE LAS ARTES<span style="font-weight:normal;font-size:50%;color: blueviolet"></span></a></h1>
            <h2>Universidad Nacional de Tierra del Fuego</h2>
          </div>

          <!-- Navigation Level 0 -->
          <div class="nav0">
            <ul>

            </ul>
          </div>			

          <!-- Navigation Level 1 -->
          <div class="nav1">
            <ul>
              <li><a href="${createLink(uri: '/')}" title="Ir a la página principal">Home</a></li>
              <li><a href="#" title="Get to know who we are">About</a></li>
              <li><a href="#" title="Get in touch with us">Contact</a></li>
              <li><a href="${redirect(uri: '/')}" title="Ver sitio como usuario">Usuario</a></li>
              <g:if test="${session.user!=null}">
                <li><g:link controller="artista" action="show" id="${session.user.id}" title="Editar datos de mi cuenta">Mi cuenta</a></g:link>>
                  <li><a href="#" title="Get an overview of website">Mis proyectos</a></li>
                  <li><g:link style="color: blue" controller="login" action="logout" title="Salir de la cuenta">Logout</g:link>></li>
              </g:if>
              <g:else>
                <li><a style="color: blue" href="${createLink(uri: '/login/index')}" title="Entrar con mis datos">Login</a></li>
                <li><g:link style="color: blue" controller="artista" action="registrar" title="Registrame como un artista">Registrarme</g:link>></li>
              </g:else>
            </ul>

          </div>              
        </div>

        <!-- A.2 HEADER MIDDLE -->


        <!-- A.3 HEADER BOTTOM -->
        <div class="header-bottom">

          <!-- Navigation Level 2 (Drop-down menus) -->
          <div class="nav2">

            <!-- Navigation item -->
            <ul>
              <li><a href="#">Eventos<!--[if IE 7]><!--></a><!--<![endif]-->
                <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul>
                  <li><a href="${createLink(controller: 'evento', action: 'create')}">Registrar un evento</a></li>
                  <li><a href="${createLink(controller: 'evento', action: 'list')}">Listado de eventos</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
              </li>
            </ul>

            <!-- Navigation item -->
            <ul>
              <li><a href="#">Espacios e Instituciones<!--[if IE 7]><!--></a><!--<![endif]-->
                <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul>
                  
                  <li><a href="${createLink(controller: 'institucion', action: 'create')}">Registrar una institución</a></li>
                  <li><a href="${createLink(controller: 'espacio', action: 'create')}">Registrar un espacio</a></li>
                  <li><a href="${createLink(controller: 'tipoEspacio', action: 'create')}">Registrar un tipo de espacio</a></li>
                  <li><a href="${createLink(controller: 'institucion', action: 'list')}">Listado de instituciones</a></li>
                  <li><a href="${createLink(controller: 'espacio', action: 'list')}">Listado de espacios</a></li>
                  <li><a href="${createLink(controller: 'tipoEspacio', action: 'list')}">Listado de tipos de espacios</a></li>
                  
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
              </li>
            </ul>          

            <!-- Navigation item -->
            <ul>
              <li><a href="#">Proyectos<!--[if IE 7]><!--></a><!--<![endif]-->
                <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul>
                  <li><a href="${createLink(controller: 'proyecto', action: 'create')}">Registrar un proyecto</a></li>
                  <li><a href="${createLink(controller: 'proyecto', action: 'list')}">Listado de proyectos</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
              </li>
            </ul>

            <!-- Navigation item -->
            <ul>
              <li><a href="#">Contactos<!--[if IE 7]><!--></a><!--<![endif]-->
                <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul>
                  <li><a href="${createLink(controller: 'contacto', action: 'list')}">Listado de contactos</a></li>
                </ul>
                <!--[if lte IE 6]></td></tr></table></a><![endif]-->
              </li>
            </ul>
          </div>
        </div>

        <!-- A.4 HEADER BREADCRUMBS -->

        <!-- Breadcrumbs -->
        <div class="header-breadcrumbs">
          <ul>
            <li><a href="${createLink(uri: '/')}">Home</a></li>
            <li><a href="#">Editar cuenta</a></li>
            <li><a href="#">Editar seguridad</a></li>

          </ul>

          <!-- Search form -->                  
          <div class="searchform">
            <form action="#" method="get" class="form">
              <fieldset>
                <input value=" Buscar Eventos" name="field" class="field" />
                <input type="submit" value="Buscar" name="button" class="button" />
              </fieldset>
            </form>
          </div>
        </div>
      </div>

      <!-- For alternative headers END PASTE here -->

      <!-- B. MAIN -->
      <div class="main">

        <!-- B.1 MAIN NAVIGATION -->
        <div class="main-navigation">
          <div style="background-color:whitesmoke;color: #008080">
            <h1 class="first" style="background-color:lightsteelblue;color: whitesmoke">Ultimos eventos</h1>
            <g:include controller="evento" action="listado" />
          </div>
          <!-- Navigation Level 3 
          <div class="round-border-topright"></div>
          <h1 class="first">Util?</h1>

          <!-- Navigation with grid style 
          <dl class="nav3-grid">


            <!-- Template infos -->                

        </div>

        <!-- B.2 MAIN CONTENT -->
        <div class="main-content">
          <!-- <h1 class="pagetitle">Bienvenido</h1> --> 
          <g:layoutBody />

          <!-- <hr class="clear-contentunit" /> --> 
          <!-- Content unit - One column -->

          <!-- <hr class="clear-contentunit" /> -->                          

          <!-- Content unit - One column -->

          <!-- <hr class="clear-contentunit" /> -->                                  

          <!-- Content unit - One column -->

        </div>

        <!-- B.3 SUBCONTENT -->
        <div class="main-subcontent">




          <!-- Subcontent unit -->
          <div class="subcontent-unit-border-orange">
            <div class="round-border-topleft"></div>
            <div class="round-border-topright"></div>
            <h1 class="orange">Noticias</h1>          
            <div>             
              <i> <b>Encabezado</b></i>    
            </div>              
            <br>
              Aca deberian
              Estar todas las noticias          
              <!--<input type="button" value="" title="Crear Noticia"></input> -->          
              <g:include controller="rss" action="leer" />
          </div>
          
          <!-- <g:include controller="NovedadesController" action="create" /> -->

          <!-- Subcontent unit -->
          <div class="subcontent-unit-border-green">
            <div class="round-border-topleft"></div><div class="round-border-topright"></div>          
            <g:link controller="categoria" action="show"><h1 class="blue">Categorias Disponibles</h1></g:link>
            <p><g:include controller="categoria" action="listar"/></p>
          </div>
        </div>
      </div>      
      <!-- C. FOOTER AREA -->      

      <div class="footer">
        <p>Copyright &copy; 2012 Laboratorio de programacion y lenguajes | Todos los derechos reservados</p>
        <p class="credits">Original design by <a href="http://www.1-2-3-4.info" title="Designer Homepage">G. Wolfgang</a></p>
      </div>      
    </div> 

  </body>
</html>
