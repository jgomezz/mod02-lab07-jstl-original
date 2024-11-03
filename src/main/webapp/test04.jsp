<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 

<c:set var="titulo" value="Este es el TITULO de la PAGINA"/>

${fn:toUpperCase(titulo)}
<br/>

${fn:substring(titulo, 2,10)}
<br/>

${fn:replace(titulo, "TITULO", "TITLE")}
<br/>

${fn:escapeXml("<foo>body of foo</foo>")}


</body>
</html>