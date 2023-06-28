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
<link rel="stylesheet" type="text/css" href="/css/list.css"> 
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>

<title>detail.jsp</title>
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
<h2>Country Detail</h2>
<section class="container">
	<table class="table">
		<tbody>
				<tr><th>code</th>              <td>${country.code}</td></tr>              
				<tr><th>name</th>              <td>${country.name}</td></tr>              
				<tr><th>continent</th>         <td>${country.continent.symbol}</td></tr>  
				<tr><th>region</th>            <td>${country.region}</td></tr>            
				<tr><th>surfaceArea</th>       <td>${country.surfaceArea}</td></tr>       
				<tr><th>indepYear</th>         <td>${country.indepYear}</td></tr>         
				<tr><th>population</th>        <td>${country.population}</td></tr>        
				<tr><th>lifeExpectancy</th>    <td>${country.lifeExpectancy}</td></tr>    
				<tr><th>gnp</th>               <td>${country.gnp}</td></tr>               
				<tr><th>gnpOld</th>            <td>${country.gnpOld}</td></tr>            
				<tr><th>localName</th>         <td>${country.localName}</td></tr>         
				<tr><th>governmentForm</th>    <td>${country.governmentForm}</td></tr>    
				<tr><th>headOfState</th>       <td>${country.headOfState}</td></tr>       
				<tr><th>capital</th>           <td>${country.capital}</td></tr>           
				<tr><th>code2</th>             <td>${country.code2}</td></tr>             
		</tbody>
	</table>
		<hr>
	<sec:authorize access="hasRole('ADMIN')">
	<menu class="btn-group">
		<a href="#" onClick="alert('Sorry ! Plz come back later')"class="btn btn-dark">create</a>
		<a href="#" onClick="alert('Sorry ! Plz come back later')" class="btn btn-secondary">update</a>
		<a href="#" onClick="alert('Sorry ! Plz come back later')" class="btn btn-dark">delete</a>
	</menu>
	</sec:authorize>
	<hr>
	
<!--        createupdatedelete ing 구현해야함.. 시간부족 -->
<%-- 	<sec:authorize access="hasRole('ADMIN')"> --%>
<!-- 	<menu class="btn-group"> -->
<!-- 		<a href="/country/create" class="btn btn-dark">create</a> -->
<%-- 		<a href="/country/update?code=${country.code}" class="btn btn-secondary">update</a> --%>
<%-- 		<a href="/country/delete?code=${country.code}" class="btn btn-dark">delete</a> --%>
<!-- 	</menu> -->
<%-- 	</sec:authorize> --%>
<!-- 	<hr> -->
	
	
	
<!-- 	<ul> -->
<!-- 		<li><a href="/country/create			   ">/city/create</a></li> -->
<%-- 		<li><a href="/country/update?code=${country.code}">/country/update?code=${country.code}</a></li> --%>
<%-- 		<li><a href="/country/delete?code=${country.code}">/country/delete?code=${country.code}</a></li> --%>
<!-- 	</ul> -->
</section>
</div>
</body>
</html>