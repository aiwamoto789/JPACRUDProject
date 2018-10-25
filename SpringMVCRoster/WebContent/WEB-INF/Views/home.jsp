<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Roster Search</title>
</head>
<body>
	<h3>Search Roster</h3>

	<form action="getPlayerByName.do" method="GET">
		Player Name: <input type="text" name="name" 
			value="Please enter a player name" /> <input type="submit"
			value="Search" />
	</form>
	<br>
	<form action="getPlayerByPosition.do" method="GET">
		Player Position: <input type="text" name="position"
			value="Please enter a position " /> <input type="submit"
			value="Search" />
	</form>
	<form action="getPlayerByContract.do" method="GET">
		Last year of contract? :  <input type="submit" name="contractYear" value="Search" />
	</form>
	<br>
	<br>
	<h3>Add a Player to Roster</h3>
	<form action="addPlayer.do" method="POST">
		<br> 
		Name: <input type="text" name="name" value="Enter new Player's name" /><br>
		Position: <input type="text" name="position" value="Enter the Player's position" /><br> 
		Number: <input type="number" name="number" value="Enter a Jersey Number" /><br> 
		Height: <input type="number" step="0.01" name="height" value="Enter Player's height" /><br> 
		Weight: <input type="number" name="weight" value="Enter Player's weight" /><br>
		Age: <input type="number" name="age" value="Enter the Player's age" /><br>
		Experience: <input type="text" name="experience" value="Enter the player's experience in years, or R for rookie" /><br> 
		College: <input type="text" name="college" value="Enter the Player's Alma Mater" /><br> 
		<input type="submit" value="Submit" />
	</form>

</body>
</html>