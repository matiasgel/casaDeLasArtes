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
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="${resource(dir: 'principal/css', file: 'layout4_setup.css')}" />
  <link rel="stylesheet" type="text/css" media="screen,projection,print" href="${resource(dir: 'principal/css', file: 'layout4_text.css')}" />
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
          <h1><a href="../" title="Ir a la página principal">CASA DE LAS ARTES<span style="font-weight:normal;font-size:50%;color: blueviolet"></span></a></h1>
          <h2>Universidad Nacional de Tierra del Fuego</h2>
        </div>
    
        <!-- Navigation Level 0 -->
        <div class="nav0">
          <ul>
            <li><a href="#" title="Pagina home in Italiano">Ital</a></li>
            <li><a href="#" title="Homepage auf Deutsch">Deut</a></li>
            <li><a href="#" title="Hemsidan p&aring; svenska">Sven</a></li>
          </ul>
        </div>			

        <!-- Navigation Level 1 -->
        <div class="nav1">
          <ul>
            <li><a href="../" title="Ir a la página principal">Home</a></li>
            <li><a href="#" title="Get to know who we are">About</a></li>
            <li><a href="#" title="Get in touch with us">Contact</a></li>																		
            <li><a href="#" title="Get an overview of website">Sitemap</a></li>
            <g:if test="${session.artista!=null}">
               <li><a href="#" title="Get an overview of website">mi cuenta</a></li>
                <li><a href="#" title="Get an overview of website">mis proyectos</a></li>
            </g:if>            
            <g:else>
               <li><a style="color: blue" href="#" title="Entrar con mis datos">Login</a></li>
               <li><g:link style="color: blue" controller="artista" action="create" title="Registrame como un artista">Registrarme</g:link>></li>
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
            <li><a href="">Overview</a></li>
          </ul>
          
          <!-- Navigation item -->
          <ul>
            <li><a href="#">Page Layouts<!--[if IE 7]><!--></a><!--<![endif]-->
              <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul>
                  <li><a href="layout1.html">Layout-1 (1-col)</a></li>
                  <li><a href="layout2.html">Layout-2 (2-col)</a></li>
                  <li><a href="layout3.html">Layout-3 (2-col)</a></li>
                  <li><a href="layout4.html">Layout-4 (3-col)</a></li>
                  <li><a href="layout5.html">Layout-5 (3-col)</a></li>                                    
                </ul>
              <!--[if lte IE 6]></td></tr></table></a><![endif]-->
            </li>
          </ul>          

          <!-- Navigation item -->
          <ul>
            <li><a href="#">Header Layouts<!--[if IE 7]><!--></a><!--<![endif]-->
              <!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul>
                  <li><a href="header1.html">Header-1 (T+M+B)</a></li>
                  <li><a href="header2.html">Header-2 (T+M)</a></li>
                  <li><a href="header3.html">Header-3 (T+B)</a></li>
                  <li><a href="header4.html">Header-4 (M+B)</a></li>
                  <li><a href="header5.html">Header-5 (T)</a></li>
                  <li><a href="header6.html">Header-6 (M)</a></li>
                  <li><a href="header7.html">Header-7 (B)</a></li>
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
          <li><a href="../">Home</a></li>
          <li><a href="#">Algo1</a></li>
          <li><a href="#">Algo2</a></li>
          
        </ul>

        <!-- Search form -->                  
        <div class="searchform">
          <form action="#" method="get" class="form">
            <fieldset>
              <input value=" Search..." name="field" class="field" />
              <input type="submit" value="GO!" name="button" class="button" />
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
<div class="subcontent-unit-border-green">
          <div class="round-border-topleft"></div><div class="round-border-topright"></div>
          <h1 class="green">It's free!</h1>
          <p>Enjoy the template for free. There are no restrictions in the license. As a sign of appreciation, please keep the author credits "<a href="http://www.1-2-3-4.info">Design by G. Wolfgang</a>" in the template footer. Thanks!</p>
        </div>
        <!-- Navigation Level 3 -->
        <div class="round-border-topright"></div>
        <h1 class="first">Navigation Title</h1>

        <!-- Navigation with grid style -->
        <dl class="nav3-grid">
                        

        <!-- Template infos -->                
      
      </div>
 
      <!-- B.2 MAIN CONTENT -->
      <div class="main-content">
        
        <!-- Pagetitle -->
        <h1 class="pagetitle">Bienvenido</h1>

        <!-- Content unit - One column -->
     
        <hr class="clear-contentunit" />          

          <g:layoutBody />
      
        <hr class="clear-contentunit" />                    

        <!-- Content unit - One column -->
        
        <hr class="clear-contentunit" />                            

        <!-- Content unit - One column -->
            
        <hr class="clear-contentunit" />                                    
        
        <!-- Content unit - One column -->
                         
      </div>
                
      <!-- B.3 SUBCONTENT -->
      <div class="main-subcontent">




        <!-- Subcontent unit -->
        <div class="subcontent-unit-border-orange">
          <div class="round-border-topleft"></div><div class="round-border-topright"></div>
          <h1 class="orange">Noticias</h1>
          <g:include controller="rss" action="leer" />
          </div>

        <!-- Subcontent unit -->
        <div class="subcontent-unit-border-green">
          <div class="round-border-topleft"></div><div class="round-border-topright"></div>
          <h1 class="green">It's free!</h1>
          <p>Enjoy the template for free. There are no restrictions in the license. As a sign of appreciation, please keep the author credits "<a href="http://www.1-2-3-4.info">Design by G. Wolfgang</a>" in the template footer. Thanks!</p>
        </div>
      </div>
    </div>
      
    <!-- C. FOOTER AREA -->      

    <div class="footer">
      <p>Copyright &copy; 2006 Your Company | All Rights Reserved</p>
      <p class="credits">Original design by <a href="http://www.1-2-3-4.info" title="Designer Homepage">G. Wolfgang</a> | Adapted by <a href="#" title="Adaptor Homepage">Your Name</a> | Powered by <a href="#" title="Content Management System">Your CMS</a> | <a href="http://validator.w3.org/check?uri=referer" title="Validate XHTML code">W3C XHTML 1.0</a> | <a href="http://jigsaw.w3.org/css-validator/" title="Validate CSS code">W3C CSS 2.0</a></p>
    </div>      
  </div> 
  
</body>
</html>
