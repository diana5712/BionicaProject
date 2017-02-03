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
	
	
	<title>Article list List</title>
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/css/font-awesome.css"/>"  rel="stylesheet" type="text/css">
    <link href="<c:url value="/resources/css/style2.css"/>" rel="stylesheet" type="text/css">
</head>
<body id = "addb"> 
<%@ include file="navbar.html" %>
     <div id="holder">
    <div id="content">
    <!-- Document starts. -->
        <div class="container" id="cont">
            <div class="row masonry" >
            <%@ include file="newArtBut.jsp" %>
            <c:forEach var="article" items="${articleList}">
            <div class="col-xs-12 col-md-3">
            
                  <div class = "item " >
                      <div class="thumbnail" id="inside">
                    
                       <div class="caption">
                           <h3>Name: <c:out value="${article.nameOfArticle}" /></h3>
                           <h3>Link: <a id="linktext" href="${article.textOfArticle}"><c:out value="${article.textOfArticle}" /></a></h3>
                     	
                       	
                        <cf:form id="butarea" method="POST" action="deleteArticle"
 						modelAttribute="article">
 						
	 						<input type="hidden" name="idArt" id="idArt" value="${article.id}"/>
	                        	
	                        <button id="modwind" type="button" class="btn btn-info "
	                       		 data-toggle="modal" data-target="#myModal-${article.id}">Details</button>
	                       	<button id="buttrash" onclick="location.href='http://localhost:8080/BionicaPr1_2/testControl/listOfArticles.html';" 
	                        	type="submit" class="btn btn-default btn-lg">
	                        	<span class="glyphicon glyphicon-trash"></span>
	                        </button>
	                        <button type="button" id="butupdate"  
	                        	 class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModalEdit-${article.id}">
	                        	<span class="glyphicon glyphicon-edit"></span>
	                        </button>
	                        
                
                        </cf:form>
                        
						<%@ include file="edit.jsp" %>
						<!-- Modal "Details"-->
						<div id="myModal-${article.id}" class="modal fade" role="dialog">
						  <div class="modal-dialog">
						
						    <!-- Modal content-->
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal">&times;</button>
						        <h4 class="modal-title">Modal Header</h4>
						      </div>
						      <div class="modal-body">
						       
						       <table width="100%" class = "mod">
                    
                    
                    <tr>
                        <th>Category</th>
                        <td><c:out value="${article.category}" /></td>
                    </tr>
                    <tr>
                        <th>Section</th>
                        <td><c:out value="${article.section}" /></td>
                    </tr>
                    <tr>
                        <th>already Read</th>
                        <td><c:out value="${article.alreadyRead}" /></td>
                    </tr>
                    <tr>
                        <th>Link</th>
                        <td><c:out value="${article.textOfArticle}" /></td>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <td><c:out value="${article.nameOfArticle}" /></td>
                    </tr>
                    </table>
						       
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						      </div>
						    </div>
						
						  </div>
						</div>
						
				 
						
                       		
                       </div>
                       </div>
                   </div>
                   
             </div>
             </c:forEach>
             
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
