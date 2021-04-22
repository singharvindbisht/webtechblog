<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.tech.blog.helper.ConnectionProvider" %>
<%@ page import="java.sql.*" %>

<!doctype html>
<html lang="en">
  <head>
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

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
    -->


    <title>Hello, world!</title>
    </head>
  <body>

    <%@ include file="normal_navbar.jsp" %>
    
	<!--  Banner -->
	
	<div class="container-fluid p-0 m-0 mb-3">
		<div class="jumbotron primary-background text-white">
			<div class="container">
				<h3>Welcome Freinds</h3>
			<h3>Tech Blog</h3>
			<p>Hello everyone this is technical blog hope you will enjoy posting here the technical knowledge</p>
			
			<p>A programming language is a formal ls. Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos. The programs for these machines</p>
		</p>
		
			<button class="btn btn-outline-light mb-3">Start Here..</button>
			<a href="login_page.jsp" class="btn btn-outline-light mb-3"><span class="fa fa-male fa-spin"></span>Login..</a>
			</div>
		</div>
	
	
	
	
	</div>
	
	
	<!-- Cards -->
	
	<div class="container">
		
		<div class="row mb-2">
			<div class="col-md-4">
				<div class="card">
				  <div class="card-body">
				    <h5 class="card-title">C++</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn primary-background text-white">Go somewhere</a>
				  </div>
				</div>
			
			</div>
			
			<div class="col-md-4">
				<div class="card">
				  <div class="card-body">
				    <h5 class="card-title">C++</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn primary-background text-white">Go somewhere</a>
				  </div>
				</div>
			
			</div>
			
			<div class="col-md-4">
				<div class="card">
				  <div class="card-body">
				    <h5 class="card-title">C++</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn primary-background text-white">Go somewhere</a>
				  </div>
				</div>
			
			</div>
		</div>
		
		
		
		<!--  Row 2 -->
		
		
		<div class="row">
			<div class="col-md-4">
				<div class="card">
				  <div class="card-body">
				    <h5 class="card-title">C++</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn primary-background text-white">Go somewhere</a>
				  </div>
				</div>
			
			</div>
			
			<div class="col-md-4">
				<div class="card">
				  <div class="card-body">
				    <h5 class="card-title">C++</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn primary-background text-white">Go somewhere</a>
				  </div>
				</div>
			
			</div>
			
			<div class="col-md-4">
				<div class="card">
				  <div class="card-body">
				    <h5 class="card-title">C++</h5>
				    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				    <a href="#" class="btn primary-background text-white">Go somewhere</a>
				  </div>
				</div>
			
			</div>
		</div>
	
	</div>
	
	
	
	
	
    
  </body>
</html>