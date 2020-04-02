<!DOCTYPE html ">
<%@page language="java" contentType="text/html; charset=utf-8"  
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新闻内容展示</title>
</head>
<body>
中译新闻展示			
<p>${content.nid }</p>   <br>
<p>${content.title }</p> <br>
<p>${content.time }</p>  <br> 
<p>${content.content }</p>
</body>
</html>