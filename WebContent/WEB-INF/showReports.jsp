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
<th style="text-align: center; width: 15%">report_id</th>
<th style="text-align: center; width: 15%">report_name</th>
<th style="text-align: center; width: 15%">report_readability</th>
<th style="text-align: center; width: 15%">report_emotion</th>
<th style="text-align: center; width: 15%">report_risk</th>
<th style="text-align: center; width: 15%">report_memory</th>
<th style="text-align: center; width: 15%">report_wordage</th>
<th style="text-align: center; width: 15%">report_release_date</th>
<th style="text-align: center; width: 15%">report_year</th>
<th style="text-align: center; width: 15%">stock_code</th>
<th style="text-align: center; width: 15%">stock_name</th>
<th style="text-align: center; width: 15%">report_kind</th>
<th style="text-align: center; width: 15%">report_industry</th>
<th style="text-align: center; width: 15%">report_block</th>
<th style="text-align: center; width: 15%">report_territory</th>
<th style="text-align: center; width: 15%">report_address</th>
</tr>

<c:forEach items="${reports}" var="reports" varStatus="status">
<tr>
<td>${reports.report_id }</td>
<td>${reports.report_name }</td>
<td>${reports.report_readability }</td>
<td>${reports.report_emotion }</td>
<td>${reports.report_risk }</td>
<td>${reports.report_memory }</td>
<td>${reports.report_wordage }</td>
<td>${reports.report_release_date }</td>
<td>${reports.report_year }</td>
<td>${reports.stock_code }</td>
<td>${reports.stock_name }</td>
<td>${reports.report_kind }</td>
<td>${reports.report_industry }</td>
<td>${reports.report_block }</td>
<td>${reports.report_territory }</td>
<td>${reports.report_address }</td>
</tr>
</c:forEach>
</table>

</body>

</html>