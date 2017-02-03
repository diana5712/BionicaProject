<%@ page language="java" contentType="text/html; 	charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" 	prefix="cf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html >
<html lang="ru">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
<title>TestPage</title>
<!-- Bootstrap -->

    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/css/font-awesome.css"/>"  rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/css/style2.css"/>" rel="stylesheet" type="text/css">
   
 

    
	<style>.error{color:red; font-weight:bold;}</style>
	
</head>

<body id = "addb">
<%@ include file="navbar.html" %>
	<div class="container">
  <h2>Modal Example</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg"
   data-toggle="modal" data-target="#myModal">
 	 Add new article(will be icon)
  </button>


      <!-- Modal add-->
  
  
</div>
	
	
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" />"> </script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.js" />"> </script>
    <script src="<c:url value="resources/js/salvattore.min.js" />"> </script>
    <script src="<c:url value="resources/js/picker.min.js" />"> </script>
</body>


 </html>