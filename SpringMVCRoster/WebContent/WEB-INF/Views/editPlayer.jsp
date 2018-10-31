<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h1>Update Player</h1>
<form action="submitUpdatePlayer.do" method="post">
<input type="hidden" name="id" value=${player.playerId }/>
<label for="playerName">Player Name: </label>
<input type="text" name="playerName" value="${player.playerName}" />
<br>
<label for="playerName">Player Position: </label>
<input type="text" name="playerPosition" value="${player.position}" />
<br>
<label for="rosterStatus">Roster Status: </label>
<input type="text" name="rosterStatus" value="${player.rosterStatus}" />
<br>
<label for="number">Number: </label>
<input type="text" name="playerName" value="${player.number}" />
<br>
<label for="height">Height: </label>
<input type="text" name="height" value="${player.height}" />
<br>
<label for="weight">Weight: </label>
<input type="text" name="weight" value="${player.weight}" />
<br>
<label for="age">Age: </label>
<input type="text" name="age" value="${player.age}" />
<br>
<label for="experience">Experience: </label>
<input type="text" name="height" value="${player.experience}" />
<br>
<label for="college">College: </label>
<input type="text" name="college" value="${player.college}" />
<br>
<label for="contractYear">Last year of Contract?: </label>
<input type="text" name="contractYear" value="${player.contractYear}" />
<br>
<input type="submit" value="Confirm Edit">
</form>
<input type ="submit" value="Home">
</body>
</html>