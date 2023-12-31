<%@page import="java.util.Base64"%>
<%@page import="spring.mvc.entities.Trainer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Dashboard</title>

<style>
	table, th, td {
		border: 1px solid black;
		border-collapse: collapse;
	}
	
	p {
		width: 500px;
	
	}
	
	table, p {
		margin: auto;
		font-size: 20px;
	}
	
	caption {
		margin-bottom:20px;
		text-decoration: underline;
		color: violet;
	}
	
	th, td {
		padding:5px;
	}
	
	a {
		text-decoration: none;
		width: 200px;
		background-color: dodgerBlue;
		color: white;
		padding: 5px;
		border-radius: 5px;
		margin-left:10px;
	}
	
	
	
</style>
</head>
<body>
	<% 
		List<Trainer> listOfTrainer = (List)request.getAttribute("listOfTrainer");
	%>
	
	<table>
		<caption>Trainer List</caption>
		<tr>
			<th>S. No</th>
			<th>Trainer Name</th>
			<th>Trainer Qualification</th>
			<th>Trainer Description</th>
			<th>year of exp</th>
			
		</tr>
		
		<!-- Dynamic No of rows depending upon records in the database -->
		
		<% 
			int serialNo = 0;
			for(Trainer trainer : listOfTrainer) {
				
				
				
				
						
			%>
		<tr>
			<td><%= trainer.getTrainerId() %></td>
			<td><%= trainer.getTrainerName() %></td>
			<td><%= trainer.getQualification() %></td>
			<td><%= trainer.getTrainerDescription() %></td>
			<td><%= trainer.getYear_of_exp()%></td>
			<td><a herf ="<%= request.getContextPath() %>/update/<%=trainer.getTrainerId() %>">Update</a>
			<td><a herf ="<%= request.getContextPath() %>/delete/<%=trainer.getTrainerId() %>">Delete</a>
			
		
		</tr>
		<%} %>
		
	
	</table>
	
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