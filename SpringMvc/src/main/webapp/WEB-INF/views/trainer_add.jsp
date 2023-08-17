<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Add</title>
<style>
	form {
		width: 400px;
		margin:auto;
	}
	
	input {
		margin-bottom: 10px;
	}
	
	legend 
	{
        width: 110px;
        padding: 5px;
        margin-left: calc(50% - 25px - 10px);
    }
	
</style>

</head>
<body>
	<form action="add" method="post" enctype="multipart/form-data">
		<fieldset>
			<legend>Add Trainer Form</legend>
			<input type="text" name="trainer_name" placeholder="Enter trainer Name"/><br/>
			<input type="text" name="qualification" placeholder="Enter trainer Qulification"/><br/>
			<input type="text" name="trainerDescription" placeholder="Enter trainer desc."/><br/>
			<input type="number" name="year_of_exp" placeholder="Number" max=50 min=0/><br/>
			
			<input type="submit" value="Submit">
		</fieldset>
	</form>
	<h3><a href="openTrainerDashBoardPage">Go to Trainer List</a></h3>

	<p>
		<% 
			String message = (String)request.getAttribute("message"); 
			if(message!=null) {
				out.print(message);
			}
		%>
	
	</p>
</body>
</html>