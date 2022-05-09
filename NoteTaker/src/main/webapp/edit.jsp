<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 

<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>This is edit page</title>


<%@includefile="all_js_css.jsp" %>


</head>
<body>

	<div class="container-fluid p-0 m-0">

		<%@include file="navbar.jsp" %>
		<h1>Edit your note </h1>
		<br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
        Note note = (Note)s.get(Note.class, noteId);
        
		%>
		
		<form action="UpdateServlet" method="post">
		
		<input value="<%=note.getId()%>" name="noteId"   type="hidden"/>
		
			<div class="form-group">

				<label for="title">Note Title</label> 
				<input 
				    name="title"
				    required 
				    type="text"
					class="form-control" 
					id="title" 
					aria-describedby="emailHelp"
					placeholder="Enter here"
					value ="<%=note.getTitle()%>" />
					
					 
				<!-- 	<small id="emailHelp"
					class="form-text text-muted">We'll never share your email
					with anyone else.</small> -->
			</div>
			<div class="form-group">
				<label for="">Note Content</label> 
				
				<textarea 
				name="content"
				required
				id="content" 
				placeholder="Enter your content here"
				class="form-control"
				style="height:300px;"><%=note.getContent() %>
				</textarea>
				
			</div>
			<div class="form-check">
			
				<!-- <input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me
					out</label> -->
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-success">Save you note</button>
			</div>
		</form>
		
		
		

	</div>


</body>
</html>