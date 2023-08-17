<%@page import="spring.mvc.entities.Trainer" %>

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
	<%
	Trainer trainer = (Trainer) request.getAttribute("trainerToUpdate");
	out.print(trainer);
	%>
	

	<form
		action=" <%= request.getContextPath()%>/update/<%= trainer.getTrainerId() %>"
		method="post">
	

		<fieldset>
			<legend>Update Course Form</legend>
			<input  type="text" name="courseName"
				value="<%=trainer.getTrainerName()%>" placeholder="Enter Trainer Name" /><br />
			
			<input type="text" name="qualifications"
				value="<%=trainer.getQualification()%>"
				placeholder="Enter qualifications" /><br /> 
				
				<input type="text"
				name="trainerDescription" value="<%=trainer.getTrainerDescription()%>"
				placeholder="desc" /><br /> 
				
				
			<input type="number" name="year_of_exp" value="<%=trainer.getYear_of_exp()%>"
				placeholder="exp" /><br /> <input type="submit"
				value="Submit">
		</fieldset>
	</form>
	
	<p>
		
	
	</p>
	

</body>
</html>