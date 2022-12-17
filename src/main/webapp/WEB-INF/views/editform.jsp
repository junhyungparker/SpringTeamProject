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
		<tr><td>Album Photo:</td><td><input type="file" name="img" />
			<c:if test="${u.getImg() ne ''}"><br /><img src="${pageContext.request.contextPath}/upload/${u.getImg()}" class="img"></c:if></td></tr>
		<tr><td>Release Date:</td><td><form:input path="reldate"/></td></tr>
		<tr><td>Genre:</td><td><select name="genre">
			<option value="Classic Soul">Classic Soul</option>
			<option value="Funk Pop">Funk Pop</option>
			<option value="Dance Pop">Dance Pop</option>
			<option value="R&B/Soul">R&B/Soul</option>
			<option value="Alternative Rock">Alternative Rock</option>
			<option value="Hip-Hop/Rap">Hip-Hop/Rap</option>
			<option value="Pop">Pop</option>
			<option value="Ballad">Ballad</option>
			<option value="CCM">CCM</option>
		</select></td></tr>
		<tr><td>Lyrics:</td><td><form:textarea cols="50" rows="5" path="lyric"/></td></tr>
		<tr><td>Duration:</td><td><form:input path="duration"/></td></tr>
		<tr><td>Status:</td><td>public:<input type="radio" name="status" value="public"/>
			private:<input type="radio" name="status" value="private"/></td></tr>
	</table>
	<input type="submit" value="Edit Post"/>
	<input type="button" value="Cancel" onclick="history.back()"/>
</form:form>

</body>
</html>