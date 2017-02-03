<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Article list List</title>
</head>
<body>
  <div>
	<h1>All Articles List</h1>
	<table>
		<tr>
			<th>category</th>
			<th>section</th>
			<th>alreadyRead</th>
			<th>textOfArticle</th>
			<th>nameOfArticle</th>
			<th>userLogin</th>
		</tr>
		<c:forEach var="article" items="${articleList}">
			<tr>
				<td><c:out value="${article.category}" /></td>
				<td><c:out value="${article.section}" /></td>
				<td><c:out value="${article.alreadyRead}" /></td>
				<td><c:out value="${article.textOfArticle}" /></td>
				<td><c:out value="${article.nameOfArticle}" /></td>
				<td><c:out value="${article.userLogin}" /></td>
			</tr>
		</c:forEach>
	</table>
  </div>	
</body>
</html>
