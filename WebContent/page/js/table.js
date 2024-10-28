//table增加一个新行 clone已存在的第一行
$(function() {
	$("#btnAdd").click(
			function() {
				var num = $("#hidNum").val(); //
				num = parseInt(num);
				num++; // 点击自加
				$("#hidNum").val(num); // 重新赋值
				$("#tRow0").clone(true).attr("id", "tRow" + num).appendTo(
						"#tblData"); // clone tr 并重新给定ID,装到table
				$("#tRow" + num + " td").each(
						function() {// 循环克隆的新行里面的td
							$(this).find("input[type='text']").val(""); // 清空克隆行的数据
							$(this).find("input[type='button']").css('display',
									'block');
							// 修改相关属性
							$(this).find("input[name='num0']").attr("id",
									"num" + num).attr("name", "num" + num);
						});
			});
});

$(function() {
	$("#btnSave").click(function() {
		var goodsid = $(this).closest("tr").find("#goodsid").val();// 找到同行的goodsid
		var num = $(this).closest("tr").find("#num").val();// 找到同行的num
		var sno = $("input[name='sno']").val();// 找到的sno
		var loc = $("input[name='basepath']").val();// 找到 loc
		var str = goodsid + "," + num + "," + sno;
		var url = loc + "ajax/save.action?str=" + str;
		$.ajax({
			type : "POST",
			url : url,
			dataType : "json",
			success : function(json) {
				var status = json.status.replace("[", "").replace("]", "");
				var msg = json.msg.replace("[", "").replace("]", "");
				if (status == "ERROR") {
					alert(msg);
				}
			},
			error : function() {
				alert("ajax请求发生错误3");
			}
		});
	});
});