<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
 
 	<!-- 
	
	Ambitos : 
	 
	   - request -> espacio de memoria que esta relacionado a nivel de invocacion
	   - page -> espacio de memoria que esta relacionado a nivel de pagina
	   - session -> espacio de memoria que esta relaciones a nivel de usuario
	   - application -> espacio de memoria que esta relacionado a nivel de aplicacion
	
	 -->

 
 
<!-- JSTL -->
<c:set scope="session" var="name" value="<b>David</b>"/>
Bienvenido <c:out value="Hola ${sessionScope.name}" default="Invitado" escapeXml="false"/>

<br>
<!-- SCRIPTLET -->
<% 
	session.setAttribute("name", "<b>David</b>");
	out.print("Bienvenido Hola " + session.getAttribute("name"));
%>


</body>
</html>