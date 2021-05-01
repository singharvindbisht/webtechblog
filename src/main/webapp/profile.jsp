<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page errorPage="error_page.jsp" %>
<%@ page import="com.tech.blog.helper.ConnectionProvider, com.tech.blog.dao.PostDao, com.tech.blog.servlet.Category, java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


	
	
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	
	<!-- <link href="../CSS/mystyle.css" rel="stylesheet" type="text/css"> -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
	
	<style><%@include file="/WEB-INF/CSS/mystyle.css"%></style>

	<!-- Optional JavaScript; choose one of the two! -->
	<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->

	

<title>Insert title here</title>
</head>
<body>

<%@ include file="profile_loggedin_navbar.jsp" %>



<!--  Profile modal  -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="container text-center">
        	<h5 class="modal-title" id="exampleModalLabel"><%= user.getName() %></h5><br/>
        	<table class="table table-striped">
				
			  <tbody>
			    <tr>
			      <th scope="row">ID</th>
			      <td><%=user.getId() %></td>
			      
			    </tr>
			    <tr>
			      <th scope="row">Email</th>
			      <td><%=user.getEmail() %></td>
			     
			    </tr>
			    <tr>
			      <th scope="row">Gender</th>
			      <td colspan="2"><%=user.getGender() %></td>
			      
			    </tr>
			    <tr>
			      <th scope="row">Registered On</th>
			      <td colspan="2"><%=user.getDateTime() %></td>
			      
			    </tr>
			    
			  </tbody>
			</table>
        
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Edit changes</button>
      </div>
    </div>
  </div>
</div>

<!--  End of modal -->


<!-- Post modal -->

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="add-post-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      <div class="modal-body">
      	<form action="AddPostServlet" id="add-post-form" method="post">
      	
     		<div class="form-group">
     			<select class="form-control">
     				<option selected disabled>--Select category--</option>
     				
     				<%
     					PostDao postdao = new PostDao(ConnectionProvider.getConnection());
     					ArrayList<Category> list = postdao.getAllCategories();
     					for(Category itr: list)
     					{
     						System.out.println("hello guys");
     						System.out.println(itr.getCname());
     				%>
     				
     				<option value="<%= itr.getCid() %>"><%= itr.getCname() %></option>
     				
     				<%
     					}
     				
     				%>
     			
     			</select>
     		</div>
     		<br/>
      	
      	
      		<div class="form-group">
      			<input name="pTitle" type="text" autofocus placeholder="Enter Post Title" class="form-control">
      		</div>
      		<br/>
      		
      		<div class="form-control">
      			<textarea name="pContentclass" class="form-control" style="height:100px" placeholder="Enter your content"></textarea>
      		</div>
      		<br/>
      		
      		<div class="form-control">
      			<textarea name="pCode" class="form-control" style="height:100px" placeholder="Enter your code ( if any )"></textarea>
      		</div>
      		<br/>
      		
      		
      		<div class="form-group">
      			<label>Choose photo (.jpg format only)</label><br/><input type="file" name="pic" placeholder="enter your pic"> 
      		</div>
      		<br/>
      		
      		<div class="container text-center">
      		
      			<button type="submit" class="btn btn-outline-primary">Post</button>
      		
      		</div>
      		
      		
      		
      	</form>
      </div>
      
      
      
      
    </div>
  </div>
</div>

<!-- Post modal end here -->



<!-- Add post JS -->


<script>



	$(document).ready(function(e){
		
		
		
		$('#add-post-form').submit(function(event){
			// this code gets called when form is submitted
			event.preventDefault();  // it stops the normal behaviour of form submitting
			console.log("woohooo you have so far you have written correct code...");
			event.returnValue = false;
			let form = new FormData(this);
			
			// now requesting to server
			$.ajax({
				url: "AddPostServlet",
				type: "Post",
				data: form,
				success: function(data, textStatus, jqXHR){
					
				},
				error: function(jqXHR, textStatus, errorThrown){
					
				},
				processData: false,
				contentType: false
			})			
			
		})
	})

</script>




<!-- End of post JS -->

</body>
</html>