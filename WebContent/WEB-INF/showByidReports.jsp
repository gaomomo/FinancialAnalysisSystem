<!DOCTYPE html>
<%@page language="java" contentType="text/html; charset=utf-8"  
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>用户展示页面</title>
</head>

<body>
<table class="table table-bordered" style="font-family: 微软雅黑" border="1" width="100%">
<tr>
<th style="text-align: center; width: 15%">stock_code</th>
<th style="text-align: center; width: 15%">stock_name</th>
<th style="text-align: center; width: 15%">report_name</th>
<th style="text-align: center; width: 15%">report_kind</th>
<th style="text-align: center; width: 15%">report_industry</th>
<th style="text-align: center; width: 15%">report_block</th>
</tr>

<tr>
<td>${reports.stock_code }</td>
<td>${reports.stock_name }</td>
<td>${reports.report_name }</td>
<td>${reports.report_kind }</td>
<td>${reports.report_industry }</td>
<td>${reports.report_block }</td>
</tr>
</table>

</body>

</html>