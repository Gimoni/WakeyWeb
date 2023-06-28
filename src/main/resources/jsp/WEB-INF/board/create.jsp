<%@ page language="java" contentType="text/html; charset=UTF-8"
       pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/heart_like_love_icon.png"> 

<link rel="stylesheet" type="text/css" href="/css/usercreate.css"> 
<link rel="stylesheet" href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>

<title>create.jsp</title>

</head>

<body>
<div class = "box" >
   <div class="board-container" id="create">
       <img src="/img/playdjicon.jpg" alt="">
         <div>
<button class="button "><a href="/" class="home" > home </a></button>
        </div>
       <form action="/board/create?list=${param.list}"  method="post">
          
           <h1>BOARD CREATE</h1>
           <div>
           	<label id="id" >id<span>*</span></label>
			<input class="form-control"    id="id" name="id"  value="${board.id}" type ="text"/>
		</div>
		<div>
			<label id="title">title<span>*</span></label>
			<input class="form-control"    id="title" name="title"  value="${board.title}" type="text"/>
		</div>
		<div>
			<label id="content">content<span></span></label>
			<input class="form-control"    id="content"  name="content" type="text" placeholder="${board.content}" value="${board.content}" type="text"/>
		</div>
		<div>
			<label id="writer">writer<span></span></label>
			<input class="form-control"    id="writer"  name="writer" type="text"  placeholder="${board.writer}" value="${board.writer}" type="text"/>
		</div>

<!--            <input name="remember-me" type="checkbox" checked="checked"> Remember me -->
           <input type="submit" name="submit" value="submit">
<!--            <a href="#" onClick="alert('OH!!! Sorry for that !')">Forgot Password?</a> -->
		  	<sec:authorize access="isAnonymous()">	
           <a href="/user/login">login?</a>
           
           <a href="/user/create">sign up?</a>
           </sec:authorize>
       </form>
   </div>
    <span style="color: red;"> ${param.message}</span>
<c:if test="${exception ne null}">
	<h1>${exception.message}</h1>
</c:if>
</div>
</html>