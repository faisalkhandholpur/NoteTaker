<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Add Notes</title>

<%@includefile="all_js_css.jsp" %>


</head>
<body>
	<div class="container-fluid p-0 m-0">

		<%@includefile="navbar.jsp" %>
		<br>
		<h1>Please fill your note detail</h1>

		<!-- 		<h1>This is add Form</h1> -->

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">

				<label for="title">Note Title</label> 
				<input 
				    name="title"
				    required 
				    type="text"
					class="form-control" 
					id="title" 
					aria-describedby="emailHelp"
					placeholder="Enter here"/>
					 
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
				style="height:300px;"
				
				></textarea>
				
			</div>
			<div class="form-check">
			
				<!-- <input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me
					out</label> -->
			</div>
			<div class="container text-center">
			<button type="submit" class="btn btn-primary">ADD</button>
			</div>
		</form>



	</div>


</body>
</html>