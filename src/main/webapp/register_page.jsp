<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


	
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	
	<!-- <link href="../CSS/mystyle.css" rel="stylesheet" type="text/css"> -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
	
	<style><%@include file="/WEB-INF/CSS/mystyle.css"%></style>

	

</head>
<body style="height:100vh">

<%@ include file="normal_navbar.jsp" %>

<main class="primary-background2 p-5">
	<div class="container">
		<div class="col-md-6 offset-md-3">
			<div class="card">
				<div class="card-header text-center">
					<span class="fa fa-user"></span><br/>Register Here
					
				</div>
				
				<%
						boolean bool = true;
						boolean helper = true;
						boolean helper2 = true;
						Object check = session.getAttribute("isRegistered");
						if(check == null)
						{
							bool = false;
						}
						else
						{
							bool = (boolean)session.getAttribute("isRegistered");
							helper = false;
						}
						
						if(bool)
						{					
				%>
						<div class="alert alert-success" role="alert">
						   Registered Successfully
						</div>
				<%
						session.removeAttribute("isRegistered");
						}
						else if(helper==false && bool==false)
						{
					
				%>
							
						<div class="alert alert-danger" role="alert">
						   Email id Already in use... Try another
						</div>
			
				<%
						session.removeAttribute("isRegistered");
						}
					
				%>
				
				
				<div class="card-body">
					<form action="register_user" method="get">
					  <div class="mb-3">
					    <label for="user_name" class="form-label">User Name</label>
					    <input name="user_name" type="text" class="form-control" id="user_name">
					  </div>
					
					
					  <div class="mb-3">
					    <label for="user_email" class="form-label">Email address</label>
					    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
					    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
					  </div>
					  
					  
					  <div class="mb-3">
					    <label for="user_password" class="form-label">Password</label>
					    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1">
					  </div>
					  
					  
					  <div class="mb-3">
					    <label for="gender">Gender</label>
					    <br/>
					    <input type="radio" id="gender" name="gender" value="Male"> Male
					    <input type="radio" id="gender" name="gender" value="Female"> Female
					    
					    
					  </div>
					  
					  
					  <div class="mb-3 form-check">
					    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
					    <label class="form-check-label" for="exampleCheck1">Agree with Terms&Conditions</label>
					  </div>
					  <br/>	
					  <button type="submit" class="btn btn-primary">Submit</button>
					</form>
				
				</div>
				<div class="card-footer">
				
				
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