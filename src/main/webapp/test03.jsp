<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="pe.edu.tecsup.dto.Pregunta"%>

<%@page import="java.util.*"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <%
	        Pregunta p1 = new Pregunta();
	        p1.setIdPregunta(1);
	        p1.setTexto("¿Qué es jstl?");
	        
	        Pregunta p2 = new Pregunta();
	        p2.setIdPregunta(2);
	        p2.setTexto("¿Qué es EL?");

	        Pregunta p3 = new Pregunta();
	        p3.setIdPregunta(2);
	        p3.setTexto("¿Qué es JSF?");

	        Collection<Pregunta> c = new ArrayList<Pregunta>();
	        c.add(p1);
	        c.add(p2);        
	        c.add(p3);        
	        
	        request.setAttribute("preguntas", c);
        %>     
         
        <c:forEach items="${requestScope.preguntas}" var="item" varStatus="i" >
            ${i.count}.- ${item.texto} <br/>
        </c:forEach>

</body>
</html>