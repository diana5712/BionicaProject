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


      <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">ADD NEW ARTICLE</h4>
        </div>
        <!-- MODAL BODY	 -->
        	 <cf:form method="POST" action="addArticle"  
 	modelAttribute="article">
 	
 	<cf:select path="category" class="form-control" >
				  <option class="glyphicon-pencil">History</option>
				  <option>Maths</option>
				  <option>Culture</option>
	</cf:select>

	<cf:select path="section" class="form-control" >
				  <option>Interesting</option>
				  <option>For Later</option>
	</cf:select>


     <table>
	<tr>
	     <td><cf:label path="alreadyRead">Already Read</cf:label></td>
	     <td><cf:input path="alreadyRead" /></td>
	     
	</tr>
	<tr>
	     <td><cf:label path="textOfArticle">Link</cf:label></td>
	     <td><cf:input path="textOfArticle" /></td>
	     
	</tr>
	<tr>
	     <td><cf:label path="nameOfArticle">Name</cf:label></td>
	     <td><cf:input path="nameOfArticle" /></td>
	</tr><tr>
	     <td><cf:label path="userLogin">Login</cf:label>
	     </td>
	     <td><cf:input path="userLogin" /></td>
	</tr><tr>
	     <td colspan="2">
		<input type="submit" value="Submit"/>
	     </td>
	</tr>
     </table> </cf:form>
        <div class="modal-footer">
          
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
	
	
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" />"> </script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<c:url value="/resources/js/bootstrap.js" />"> </script>
    <script src="<c:url value="resources/js/salvattore.min.js" />"> </script>
    <script src="<c:url value="resources/js/picker.min.js" />"> </script>
</body>


 </html>