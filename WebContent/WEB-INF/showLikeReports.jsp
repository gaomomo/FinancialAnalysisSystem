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

<form action="../report/selectReportsByindustryAndblockAnd" >
  <select name='report_industry' style='width:150'>
         <option value='软件'>软件</option>
         <option value='保险'>保险</option>
         <option value='网络'>网络</option>
         <option value='路桥'>路桥</option>
 </select>
 <select name='report_block' style='width:150'>
         <option value='主板'>主板</option>
         <option value='新三板'>新三板</option>
         <option value='沪板'>沪板</option>
         <option value='创业板'>创业板</option>
 </select>
 <select name='report_year' style='width:150'>
         <option value='2017'>2017</option>
         <option value='2017'>2018</option>

 </select>
<input id="commit" type="submit" value="查询" >
</form>










<table class="table table-bordered" style="font-family: 微软雅黑" border="1" width="100%">
<tr>
<th style="text-align: center; width: 15%">stock_code</th>
<th style="text-align: center; width: 15%">stock_name</th>
<th style="text-align: center; width: 15%">report_name</th>
<th style="text-align: center; width: 15%">report_memory</th>
<th style="text-align: center; width: 15%">report_readability</th>
<th style="text-align: center; width: 15%">report_release_date</th>
</tr>

<c:forEach items="${reports}" var="reports" varStatus="status">
<tr>
<td>${reports.stock_code }</td>
<td>${reports.stock_name }</td>
<td>${reports.report_name }</td>
<td>${reports.report_memory }
	<a href="filePreview?fileName=${reports.report_address }">
	<img width="40px" height="40px" src="/upload/${b.fileName }">
	</a></td>
<td><a href='selectByPrimaryKey/${reports.report_id }'>${reports.report_readability }详情</a> </td>
<td>${reports.report_release_date }</td>
</tr>
</c:forEach>
</table>

</body>

</html>