
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page errorPage="error_page.jsp" %>
<%@ page import="com.tech.blog.entities.User, com.tech.blog.entities.Message" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
    	Message msg = new Message("Unauthorized Access. Login To proceed", "danger", "alert-danger");
    	session.setAttribute("msg", msg);
        response.sendRedirect("login_page.jsp");
    }
%>
<nav class="navbar navbar-expand-lg navbar-light primary-background">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><span class="fa fa-bullhorn"></span>TechBlog</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Learn code with Arvind</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Categories
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">DataStructure</a></li>
            <li><a class="dropdown-item" href="#">C++</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Scripting Languages</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#" tabindex="-1" aria-disabled="true">More</a>
        </li>
        
        
      </ul>
      
      <ul class="navbar-nav mr-right">
      	 <li class="nav-item">
          <a class="nav-link" href="register_page.jsp" tabindex="-1" aria-disabled="true"><span class="fa fa-user-circle"></span><%=user.getName() %></a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="LogoutServlet" tabindex="-1" aria-disabled="true"><span class="fa fa-user-plus"></span>Logout</a>
        </li>
      
      </ul>
      
      
    </div>
  </div>
</nav>