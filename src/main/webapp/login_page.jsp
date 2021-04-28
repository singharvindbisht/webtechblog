<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.tech.blog.entities.User" %>
<%@ page import="com.tech.blog.entities.Message" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Here</title>

<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	
	<!-- <link href="../CSS/mystyle.css" rel="stylesheet" type="text/css"> -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
	
	<style><%@include file="/WEB-INF/CSS/mystyle.css"%></style>


</head>
<body>

<%@ include file="normal_navbar.jsp" %>
<main class="d-flex align-items-center" style="height:70vh">
	
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header">
						<h3>Login Here</h3>	
					</div>
					<%
						Message message = (Message)session.getAttribute("msg");
						if(message!=null)
						{
					%>
					<div class="alert <%= message.getCssClass() %>" role="alert">
					   <%= message.getContent() %>
					</div>
					
					<%
						session.removeAttribute("msg");
						}					
					%>
					
					<div class="card-body">
						<form action="LoginServlet" method="POST">
						  <div class="form-group">
						    <label for="exampleInputEmail1">Email address</label>
						    <input name="user_email" type="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
						    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
						  </div>
						  <div class="form-group">
						    <label for="exampleInputPassword1">Password</label>
						    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
						  </div>
						  <!-- <div class="form-check">
						    <input name="user_checkout" type="checkbox" class="form-check-input" id="exampleCheck1">
						    <label class="form-check-label" for="exampleCheck1">Check me out</label>
						  </div> -->
						  <div class="container text-center">
						  	<button type="submit" class="btn btn-primary">Submit</button>
						  </div>
						</form>
						
					</div>
				</div>
			
			</div>
		
		</div>
	</div>

</main>



<!-- Optional JavaScript; choose one of the two! -->
	<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->



</body>
</html>