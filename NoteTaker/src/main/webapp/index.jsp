<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Noter : Home Page</title>

<%@includefile="all_js_css.jsp" %>



</head>
<body>

	<!-- You can try this "container-fluid p-0 m-0" -->
	<div class="container-fluid p-0 m-0">

		<%@includefile="navbar.jsp" %>
		<br>
		<div class="card py-5">
			<img class="img-fluid mx-auto" style="max-width: 400px"
				src="img/notepad2.png">
			<h1 class="text-primary text-uppercase text-center mt-3 ">Start
				Taking your notes.</h1>

			<div class="container text-center">
				<br>
				<button class="btn btn-outline-primary text-center"
					href="add_notes.jsp">
					<a href="add_notes.jsp"> Start Here </a>
				</button>

			</div>
		</div>
	</div>





</body>
</html>