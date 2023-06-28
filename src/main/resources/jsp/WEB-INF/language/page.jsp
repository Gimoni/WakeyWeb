<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Coche-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/heart_like_love_icon.png">  
<link rel="stylesheet" type="text/css" href="/css/list.css">
<link rel="stylesheet" href="/webjars/bootstrap/5.2.3/css/bootstrap.css">
<script src="/webjars/bootstrap/5.2.3/js/bootstrap.js"></script>
<script src="/webjars/jquery/jqurey.min.js"></script>

<title>page.jsp</title>
<style type="text/css">
.page-item :hover {
	color: white;
}
.page-item :active {
	background-color: pink;
}
</style>
</head>
<body>
<div class= "box">
<header>
<div class="container-fluid p-3 bg-dark text-white text-center">
  <div class="d-flex justify-content-front">
  	<sec:authorize access="isAnonymous()">
	<a class="hi" href="/user/login">Login</a>
	</sec:authorize>
	
	<sec:authorize access="isAuthenticated()">
	<a  class="hi" href="/user/logout">Logout</a>
	</sec:authorize>
  </div>
  <h1>Wakey Techno Wakey House</h1>
  <div class="d-flex justify-content-end">
  <p><sec:authorize access="isAuthenticated()">
&nbsp; Hello ! Login User : &nbsp; <sec:authentication property="name"/> <br>How are you today?!
</sec:authorize></p> 
  </div>
</div>
     <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
         <div class="container">
             <h2><a class="navbar-brand" href="#!"></a></h2>
             <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                 <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                     <li class="nav-item"><a class="nav-link" aria-current="page" href="/">Home</a></li>
                     <li class="nav-item"><a class="nav-link" href="/#wakeytech">Wakey Tech</a></li>
                     <li class="nav-item"><a class="nav-link" href="/language/list">Language List</a></li>
                 </ul>
             </div>
         </div>
     </nav>
</header>
<h2>Language Page</h2>
<section class="container">
	<table class="table table-striped table-bordered table-hover">
		<thead class>
			<tr>
				<th>countryCode</th>
				<th>language</th>
				<th>is_official</th>
				<th>percentage</th>	
			</tr>
		</thead>
		<tbody>
		<c:forEach var="e" items="${list}">
			<tr>
			<tr>
				<td>${e.countryCode}</td>
				<td>${e.language}</td>
				<td>${e.isOfficial}</td>
				<td>${e.percentage}</td>
			</tr>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<hr>
		<section class="container">
	<ul class="pagination justify-content-center"  style="margin:20px 0">
		<li class="page-item" style="margin:20px 5"><a href="/language/page/${paging.navigateFirstPage-1}/${paging.pageSize}" class="page-link">Previous</a></li>
	<c:forEach var="n" items="${paging.navigatepageNums}">
		<c:choose>
			<c:when test="${n eq paging.pageNum}">
				<li class="page-item active" style="margin:20px 5" ><a href="/language/page/${n}/${paging.pageSize}" class="page-link">${n}</a></li>
			</c:when>
			<c:when test="${n ne paging.pageNum}">
				<li class="page-item " style="margin:20px 5"    ><a href="/language/page/${n}/${paging.pageSize}"  class="page-link">${n}</a></li>
			</c:when>
		</c:choose>
	</c:forEach>
		<li class="page-item" style="margin:20px 5"><a href="/language/page/${paging.navigateLastPage+1}/${paging.pageSize}" class="page-link">Next</a></li>
	</ul>
		
		
 	<hr>
	<div>
	<pre>
	${json}
	</pre>
	</div>
</section>
</section>
</div>
</body>
</html>