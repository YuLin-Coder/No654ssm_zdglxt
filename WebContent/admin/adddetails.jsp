<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="check_logstate.jsp"></jsp:include>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link href='css/bootstrap.min.css' rel='stylesheet'>
<script src='js/jquery.min.js'></script>
<script src='js/table.js'></script>
</head>
<body>
	<table style="BORDER-COLLAPSE: collapse" borderColor='#7266ba' cellSpacing="1" cellPadding="5" width="99%" align="center" border='1'
		id="tblData">
		<thead>
			<tr>
				<td colspan="7" align="right" style="background-color: #88C6E5;"><button class='btn btn-primary' id="btnAdd">+</button></td>
			</tr>
			<tr align="center" style="background-color: #88C6E5;">
				<td>物资</td>
				<td>销售数量</td>
				<td>操作</td>
			</tr>
		</thead>
		<tr align="center" id="tRow0">
			<td><select name="goodsid" id="goodsid" class="form-control">
					<c:forEach items="${goodsList}" var="goods">
						<option value="${goods.goodsid}">${goods.goodsname }(${goods.num })</option>
					</c:forEach>
			</select></td>
			<td><input type="text" name="num" id="num" class="form-control"></td>
			<td><input type="hidden" id="hidNum" name="hidNum" value="0" /> <input type="button" id="btnSave" value="提交保存"
				class='btn btn-primary'></td>
		</tr>
	</table>
	<input type="hidden" id="basepath" name="basepath" value="<%=basePath%>" />
	<input type="hidden" name="sno" id="sno" value="${sno }" />
</body>
</html>

