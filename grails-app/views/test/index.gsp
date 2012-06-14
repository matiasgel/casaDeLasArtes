<!--
  To change this template, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sample title</title>
  </head>
  <body>
  <g:each_pair collection="${lista}" var="variable" key="clave">
  clave ${variable} es = ${clave} <br/>
  </g:each_pair>
  </body>
</html>
