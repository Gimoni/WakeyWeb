<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/heart_like_love_icon.png"> 
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>

<title>success.jsp</title>
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
                     <li class="nav-item"><a class="nav-link" href="/country/list">Country List</a></li>
                 </ul>
             </div>
         </div>
     </nav>
</header>
<h2>Country</h2>
<c:choose>
	<c:when test="${param.create ne null}"><h2>Created</h2></c:when>
	<c:when test="${param.update ne null}"><h2>Updated</h2></c:when>
	<c:when test="${param.delete ne null}"><h2>Deleted</h2></c:when>
	<c:otherwise></c:otherwise>
</c:choose>

<hr>
<section class="container">
	<table class="table">
		<tbody>
				<tr><th>code</th> <td>${e.code}</td></th>
				<tr><th>name</th> <td><a href="/country/detail/${e.code}">${e.name}</a></td></th>
				<tr><th>continent</th><td>${e.continent.symbol}</td></th>
				<tr><th>region</th><td>${e.region}</td></th>
				<tr><th>surfaceArea</th><td>${e.surfaceArea}</td></th>
				<tr><th>indepYear</th><td>${e.indepYear}</td></th>
				<tr><th>population</th><td>${e.population}</td></th>
				<tr><th>lifeExpectancy</th><td>${e.lifeExpectancy}</td></th>
				<tr><th>gnp</th><td>${e.gnp}</td></th>
				<tr><th>gnpOld</th><td>${e.gnpOld}</td></th>
				<tr><th>localName</th><td>${e.localName}</td></th>
				<tr><th>governmentForm</th><td>${e.governmentForm}</td></th>
				<tr><th>headOfState</th><td>${e.headOfState}</td></th>
				<tr><th>capital</th><td>${e.capital}</td></th>
				<tr><th>code2</th><td>${e.code2}</td></th>
		</tbody>
	</table>
	<hr>
</section>
</body>
</html>