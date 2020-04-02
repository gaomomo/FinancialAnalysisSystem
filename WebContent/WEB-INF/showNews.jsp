<!DOCTYPE html>
<%@page language="java" contentType="text/html; charset=utf-8"  
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新闻展示页面</title>
</head>

<body>
<table class="table table-bordered" style="font-family: 微软雅黑" border="1" width="100%">
<tr>
<th style="text-align: center; width: 5%">新闻编号</th>
<th style="text-align: center; width: 5%">新闻标题</th>
<th style="text-align: center; width: 5%">发布时间</th>
</tr>
<c:forEach items="${news}" var="news" varStatus="status">
<tr>
<td>${news.nid }</td>
<td><a href='queryNewsContent/${news.title }'>${news.title }</a> </td>
<td>${news.time }</td>
</tr>
</c:forEach>
</table>

<script type="text/javascript">
 function search(){
 window.location.href = "../recipientsAndGoods/selectALLRecipentsWithGoods";
 }
 </script>
<input type="submit" value= "点击查看固定资产领用情况" onclick="search()">
</body>
</html>