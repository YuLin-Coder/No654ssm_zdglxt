<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	String role = (String) session.getAttribute("role");
	if ("管理员".equals(role)) {
%>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
<script>
$(function(){
	/*
	 * 实现当前菜单项的高亮
	 */ 
	$('dd ul li a').click(function(){
		$('dd ul li a').css('color','#666')
		$(this).css('color','#148cf1')
	})
})
</script>

<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">

		<dl id="menu-admin">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>管理员信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="admin/createAdmin.action" data-title="新增管理员" href="javascript:void(0)">新增管理员信息</a></li>
					<li><a data-href="admin/getAllAdmin.action" data-title="管理员列表" href="javascript:void(0)">管理员信息列表</a></li>
					<li><a data-href="admin/queryAdminByCond.action" data-title="管理员查询" href="javascript:void(0)">管理员信息查询</a></li>
					<li><a data-href="admin/prePwd.action" data-title="修改密码" href="javascript:void(0)">修改密码</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>销售经理信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="employ/createEmploy.action" data-title="新增销售经理" href="javascript:void(0)">新增销售经理信息</a></li>
					<li><a data-href="employ/getAllEmploy.action" data-title="销售经理列表" href="javascript:void(0)">销售经理信息列表</a></li>
					<li><a data-href="employ/queryEmployByCond.action" data-title="销售经理查询" href="javascript:void(0)">销售经理信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>物资类型信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="cate/createCate.action" data-title="新增物资类型" href="javascript:void(0)">新增物资类型信息</a></li>
					<li><a data-href="cate/getAllCate.action" data-title="物资类型列表" href="javascript:void(0)">物资类型信息列表</a></li>
					<li><a data-href="cate/queryCateByCond.action" data-title="物资类型查询" href="javascript:void(0)">物资类型信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>仓库物资信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="goods/createGoods.action" data-title="新增仓库信息" href="javascript:void(0)">新增仓库物资信息</a></li>
					<li><a data-href="goods/getAllGoods.action" data-title="仓库信息列表" href="javascript:void(0)">仓库物资信息列表</a></li>
					<li><a data-href="goods/queryGoodsByCond.action" data-title="仓库信息查询" href="javascript:void(0)">仓库物资信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>仓库账单信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="sell/getAllSell.action" data-title="仓库账单列表" href="javascript:void(0)">仓库账单信息列表</a></li>
					<li><a data-href="sell/querySellByCond.action" data-title="仓库账单查询" href="javascript:void(0)">仓库账单信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>账单明细信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="details/queryDetailsByCond.action" data-title="账单明细查询" href="javascript:void(0)">账单明细信息查询</a></li>
				</ul>
			</dd>
		</dl>

	</div>
</aside>
<%
	} else {
%>
<aside class="Hui-aside">
	<div class="menu_dropdown bk_2">
		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>个人信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="employ/userinfo.action" data-title="个人信息" href="javascript:void(0)">个人信息</a></li>
					<li><a data-href="employ/prePwd.action" data-title="修改密码" href="javascript:void(0)">修改密码</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>物资类型信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="cate/queryCateByCond.action" data-title="物资类型查询" href="javascript:void(0)">物资类型信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>仓库物资信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="goods/queryGoodsByCond.action" data-title="仓库信息查询" href="javascript:void(0)">仓库信息信息查询</a></li>
				</ul>
			</dd>
		</dl>

		<dl id="menu">
			<dt>
				<i class="Hui-iconfont">&#xe62d;</i>仓库账单信息管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
			</dt>
			<dd>
				<ul>
					<li><a data-href="sell/createSell.action" data-title="新增仓库账单" href="javascript:void(0)">新增仓库账单信息</a></li>
					<li><a data-href="sell/getMySell.action" data-title="我的仓库账单列表" href="javascript:void(0)">我的仓库账单列表</a></li>
				</ul>
			</dd>
		</dl>

	</div>
</aside>
<%
	}
%>