<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

	<h1>Edit Song</h1>
	<form:form modelAttribute="u" method="POST" action="../editok">
		<form:hidden path="seq"/>
		<table>
			<tr><td>Title:</td><td><form:input path="title"/></td></tr>
			<tr><td>Artist:</td><td><form:input path="artist"/></td></tr>
			<tr><td>Album:</td><td><form:input path="album"/></td></tr>
			<tr><td>Release Date:</td><td><form:input path="reldate"/></td></tr>
			<tr><td>Genre:</td><td><form:input path="genre"/></td></tr>
			<tr><td>Lyrics:</td><td><form:textarea cols="50" rows="5" path="lyric"/></td></tr>
			<tr><td>Duration:</td><td><form:input path="duration"/></td></tr>
			<tr><td>Status:</td><td><form:input path="status"/></td></tr>
		</table>
		<input type="submit" value="Edit Post"/>
		<input type="button" value="Cancel" onclick="history.back()"/>
	</form:form>

</body>
</html>