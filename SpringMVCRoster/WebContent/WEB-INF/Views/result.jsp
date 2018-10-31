<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Player Result</title>
</head>
<body>
	<c:choose>
		<c:when test="${not empty player}">
			<ul>
				<li>Player ID: ${player.playerId }</li>
				<li>Player Name: ${player.playerName }</li>
				<li>Position: ${player.position }</li>
				<li>Roster Status: ${player.rosterStatus }</li>
				<li>Number: ${player.number}</li>
				<li>Height: ${player.height }</li>
				<li>Weight: ${player.weight}</li>
				<li>Age: ${player.age }</li>
				<li>Experience: ${player.experience }</li>
				<li>College: ${player.college} }
				<li>Last year of Contract?: ${player.contractYear }</li>
			</ul>
			<form action="updatePlayer.do" method="GET">
				Update Player?
				<button>Update Player</button>
				<input type="hidden" name="id" value="${player.playerId}" />
			</form>
			<br>
			<form action="cutPlayer.do" method="POST">
				Cut Player?
				<button onclick="myFunction()">Cut Player</button>
				<input type="hidden" name="id" value="${player.playerId}" />
				<script>
					function myFunction() {
						confirm("Are you sure you wish to cut this player from the roster?");
					}
				</script>
			</form>
		</c:when>
		<c:when test="${not empty players}">
			<c:forEach items="${players}" var="player">
				<ul>
					<li>Player ID: ${player.playerId }</li>
					<li>Player Name: ${player.playerName }</li>
					<li>Position: ${player.position }</li>
					<li>Roster Status: ${player.rosterStatus }</li>
					<li>Number: ${player.number}</li>
					<li>Height: ${player.height }</li>
					<li>Weight: ${player.weight}</li>
					<li>Age: ${player.age }</li>
					<li>Experience: ${player.experience }</li>
					<li>College: ${player.college} }
					<li>Last year of Contract?: ${player.contractYear }</li>
				</ul>
			</c:forEach>
			<form action="cutPlayer.do" method="POST">
				Enter Player ID you wish to cut: <input type="number" name="id"
					value="Please enter a player ID" /> <input type="submit"
					value="Search" />
			</form>
			<form action="updatePlayer.do" method="GET">
				Enter Player ID you wish to update: <input type="number" name="id"
					value="Please enter a player ID" /> <input type="submit"
					value="Search" />
			</form>

		</c:when>
		<c:otherwise>
			<h4>No player found</h4>
		</c:otherwise>
	</c:choose>
	<form action="home.do">
		<input type="submit" value="Home">
	</form>
</body>
</html>