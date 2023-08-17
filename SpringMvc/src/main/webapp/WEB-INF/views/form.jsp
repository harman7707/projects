<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Form Validation</title>
 
</head>
<body>
 
	<form action="register" method="post">
 
		<table>
			<tr>
				<td>Trainer Name</td>
				<td><input type="text" name="trainer_name"
					placeholder="Course Name" /></td>
			</tr>
			<tr>
				<td>qualification</td>
				<td><input type="text" name="qualification"
					placeholder="qualification" /></td>
			</tr>
			<tr>
				<td>trainerDecription</td>
				<td><input type="text" name="trainerDescription" placeholder="Category" /></td>
			</tr>
			<tr>
				<td>year_of_exp</td>
				<td><input type="number" name="year_of_exp" placeholder="Intended Audience"/></td>
			</tr>
 
			<tr>
				<td></td>
				<td><input type="reset" value="Reset" /> <input id="submit"
					type="submit" value="Submit" />
					<a href="update">Update</a></td>
			</tr>
		</table>
	</form>
	<% String name = (String)request.getAttribute("trainerName");
	out.print(name);%>
 
</body>
</html>