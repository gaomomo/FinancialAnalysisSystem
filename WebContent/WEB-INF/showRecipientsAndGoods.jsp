<!DOCTYPE html ">
<%@page language="java" contentType="text/html; charset=utf-8"  
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>展示领用情况</title>
</head>
<body>

<table class="table table-bordered" style="font-family: 微软雅黑"  border="1" >
<tr>
<th style="text-align: center; width: 15%">领用人</th>
<th style="text-align: center; width: 15%">部门</th>
<th style="text-align: center; width: 15%">岗位</th>
<th style="text-align: center; width: 15%">资产名称</th>
<th style="text-align: center; width: 15%">资产类型</th>
<th style="text-align: center; width: 15%">资产数量</th>
<th style="text-align: center; width: 15%">资产规格</th>
<th style="text-align: center; width: 15%">资产SN码</th>
<th style="text-align: center; width: 15%">资产供应商</th>
</tr>

<c:forEach items="${list}" var="rl" varStatus="status">
<tr>
<td>${rl.rname }</td>
<td>${rl.rdepartment }</td>
<td>${rl.rjobs }</td>

<c:forEach items="${rl.goods}" var="gl" varStatus="status"> 
<td>${gl.gname }</td>
<td>${gl.gtype }</td>
<td>${gl.gnumber }</td>
<td>${gl.gspecifications }</td>
<td>${gl.gsn }</td>
<td>${gl.gsupplier }</td>
</c:forEach>
</tr>
</c:forEach>
</table>

</body>
</html>