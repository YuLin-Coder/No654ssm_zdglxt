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
<link rel="stylesheet" type="text/css" href="h-ui/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="h-ui/h-ui.admin/css/style.css" />
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="h-ui/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="h-ui/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript" src="js/goods.js" charset="utf-8"></script>
<script type="text/javascript" src="js/selimage.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>仓库信息管理 <span class="c-gray en">&gt;</span> 新增仓库信息 <a
			class="btn btn-success radius r" style="line-height: 1.6em; margin-top: 3px" href="goods/createGoods.action" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<article class="page-container">
		<form class="form form-horizontal" id="form-article-add" action="goods/addGoods.action" name="myform" method="post">
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">物资号</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="goodsno" class="input-text" id="goodsno" placeholder="请输入物资号" value="${goodsno }" readonly="readonly" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">物资名称</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="goodsname" class="input-text" id="goodsname" placeholder="请输入物资名称" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">物资类型</label>
				<div class="formControls col-xs-8 col-sm-9">
					<span class="select-box"><select name="cateid" class="select" id="cateid"><option value="">---请选择物资类型--</option>
							<c:forEach items="${cateList}" var="cate">
								<option value="${cate.cateid}">${cate.catename }</option>
							</c:forEach></select></span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">图片</label>
				<div class="formControls col-xs-8 col-sm-9">
					<script type="text/javascript" src="js/selimage.js"></script>
					<input class="input-text" type="text" name="image" id="image" onclick="selimage();" placeholder="请选择图片" readonly="readonly" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">销售价格</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="price" class="input-text" id="price" placeholder="请输入销售价格" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">生产日期</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="birthday" class="input-text" id="birthday" onclick="WdatePicker()" readonly="readonly" placeholder="请输入生产日期" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">存放位置</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="place" class="input-text" id="place" placeholder="请输入存放位置" />
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-4 col-sm-2">备注</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" name="memo" class="input-text" id="memo" placeholder="请输入备注" />
				</div>
			</div>

			<div class="row cl">
				<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
					<input type="hidden" id="basepath" value="<%=basePath%>" />
					<button id="sub" class="btn btn-secondary radius" type="submit">
						<i class="Hui-iconfont">&#xe632;</i>提交保存
					</button>
					<button id="res" class="btn btn-default radius" type="reset">
						<i class="Hui-iconfont">&#xe68f;</i>取消重置
					</button>
				</div>
			</div>
		</form>
	</article>
</body>
</html>

