<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta name="layout" content="principal">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sample title</title>
  </head>
  <body>
    <div id="loginBox" class="loginBox">
   <g:if test="${session?.user}">
      <div style="margin-top:20px">
         <div style="float:right;">
            <a href="#">Perfil</a> | <g:link controller="login" action="userlogout">Logout</g:link><br>
	 </div>
	 <div id="welcome">Bienvenido de nuevo <span id="userFirstName">${session?.user?.firstName}!</span></div>
	 <br><br>
      </div>
   </g:if>
   <g:else>
    mensaje: ${message}
      <g:form name="loginForm" url="[controller:'login',action:'login']">
	<div>Username:</div>
	<g:textField name="username"></g:textField>
	<div>Password:</div>
	<g:passwordField name="password"/>
	<input type="submit" value="Login" />
      </g:form>
      <g:renderErrors bean="${loginCmd}"></g:renderErrors>
   </g:else>
</div>
  </body>
</html>
