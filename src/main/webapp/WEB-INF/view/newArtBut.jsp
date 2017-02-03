<%@ page language="java" contentType="text/html; 	charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" 	prefix="cf"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="col-xs-12 col-md-3">
            
                  <div class = "item " >
                      <div class="thumbnail" id="inside">
						<button data-toggle="modal" data-target="#myModal"
						 type="button" id="plusBut">
		                     <span class="glyphicon glyphicon-plus"></span>
		                </button>
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
 	
 	
     <table id="tab">
	<tr>
			<cf:select path="category" class="form-control" >
				<option class="glyphicon-pencil">History</option>
				<option>Maths</option>
				<option>Culture</option>
						</cf:select>
						</tr>
						</br>
						<tr>
									
						<cf:select path="section" class="form-control" >
						<option>Interesting</option>
			 		    <option>For Later</option>
						</cf:select>
						</tr>
									
						 </br>
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
											   
						</tr>
											
						</table> 
						<button type="submit" id="butOk"
						onclick="location.href='http://localhost:8080/BionicaPr1_2/testControl/listOfArticles.html';">
                     <span class="glyphicon glyphicon-ok-circle"></span>
                  </button>
             </cf:form>
        
      </div>
      
    </div>
  </div>
                       </div>
                   </div>
    </div>
</body>
</html>