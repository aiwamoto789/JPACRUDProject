<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Player</title>
</head>

	<h3>Update the Queried Player</h3>
<form action="updateThisPlayer.do" method="POST">
<input type="hidden" name="id" value="${player.id}" /><br>
    Player Name: <input type="text" name="name" value="${player.name }.title }" /><br>
    Position: <input type="text" name="position" value="${player.position}" /><br>
    Number: <input type="number" name="number" value="${player.number }" /><br>
    Status: <input type="text" name="rosterStatus" value="${player.rosterStatus}" /><br>
    Height: <input type="number" step="0.01" name="height" value="${player.height}" /><br>
    Weight: <input type="number" name="weight" value="${player.weight}" /><br>
    Age: <input type="number" name="age" value="${player.age}" /><br>
    Experience:<input type="text" name="experience" value="${player.experience}" /><br>
    Last year of Contract?: <input type="text" name="contractYear" value="${player.contractYear}" /><br>
    College: <input type="text" name="college" value="${player.college}" /><br>
    <input type="submit" value="Submit" />
</form>
<form action="index.do">
<input type ="submit" value="Home">
</form>

<body>
</body>