<%@ page language="java" contentType="text/html; 	charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" 	prefix="cf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01   
       Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; 		charset=UTF-8">
	<title>New Merchant</title>
	<style>.error{color:red; font-weight:bold;}</style>
	
</head>
<body>
     <h2>Merchant Information</h2>
     <cf:form method="POST" action="addArticle"  
 	modelAttribute="article">
     <table>
	<tr>
	     <td><cf:label path="category">Category</cf:label></td>
	     <td><cf:input path="category" /></td>
	    
	</tr>
	<tr>
	     <td>
	    <cf:label path="section">Section</cf:label> </td>
	    <td><cf:input path="section" /></td>
	    
	</tr>
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
</body> </html>