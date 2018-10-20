<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.do</title>
</head>
<body>
	<form action="getPlayer.do" method="GET">
		<input type="text" name="id" /> <input type="submit"
			value="Find Player" />
	</form>
	<c:forEach var="players" items="${players}">
			<ul>
				<li><a href="getFilm.do?id=${player.id}">${player.name}</a></li>
			</ul>
		</c:forEach>
</body>
</html>