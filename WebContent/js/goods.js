$(function() {

$("#goodsno").blur(
		function() {
			$("#goodsno_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#goodsno").after("<span id='goodsno_msg' style='color: red'>物资号不能为空</span>");
			}
	});

$("#goodsname").blur(
		function() {
			$("#goodsname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#goodsname").after("<span id='goodsname_msg' style='color: red'>物资名称不能为空</span>");
			}
	});

$("#cateid").blur(
		function() {
			$("#cateid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#cateid").after("<span id='cateid_msg' style='color: red'>物资类型不能为空</span>");
			}
	});

$("#image").blur(
		function() {
			$("#image_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#image").after("<span id='image_msg' style='color: red'>图片不能为空</span>");
			}
	});

$("#price").blur(
		function() {
			$("#price_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#price").after("<span id='price_msg' style='color: red'>销售价格不能为空</span>");
			}
	});

$("#birthday").blur(
		function() {
			$("#birthday_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#birthday").after("<span id='birthday_msg' style='color: red'>生产日期不能为空</span>");
			}
	});

$("#place").blur(
		function() {
			$("#place_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#place").after("<span id='place_msg' style='color: red'>存放位置不能为空</span>");
			}
	});

$("#memo").blur(
		function() {
			$("#memo_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
			}
	});







$('#sub').click(function(){
var goodsno = $("#goodsno").val();
var goodsname = $("#goodsname").val();
var cateid = $("#cateid").val();
var image = $("#image").val();
var price = $("#price").val();
var birthday = $("#birthday").val();
var place = $("#place").val();
var memo = $("#memo").val();
$("#goodsno_msg").empty();
$("#goodsname_msg").empty();
$("#cateid_msg").empty();
$("#image_msg").empty();
$("#price_msg").empty();
$("#birthday_msg").empty();
$("#place_msg").empty();
$("#memo_msg").empty();
if (goodsno == "" || goodsno == null) {
	$("#goodsno").after("<span id='goodsno_msg' style='color: red'>物资号不能为空</span>");
	return false;
}
if (goodsname == "" || goodsname == null) {
	$("#goodsname").after("<span id='goodsname_msg' style='color: red'>物资名称不能为空</span>");
	return false;
}
if (cateid == "" || cateid == null) {
	$("#cateid").after("<span id='cateid_msg' style='color: red'>物资类型不能为空</span>");
	return false;
}
if (image == "" || image == null) {
	$("#image").after("<span id='image_msg' style='color: red'>图片不能为空</span>");
	return false;
}
if (price == "" || price == null) {
	$("#price").after("<span id='price_msg' style='color: red'>销售价格不能为空</span>");
	return false;
}
if (birthday == "" || birthday == null) {
	$("#birthday").after("<span id='birthday_msg' style='color: red'>生产日期不能为空</span>");
	return false;
}
if (place == "" || place == null) {
	$("#place").after("<span id='place_msg' style='color: red'>存放位置不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#goodsno_msg").empty();
$("#goodsname_msg").empty();
$("#cateid_msg").empty();
$("#image_msg").empty();
$("#price_msg").empty();
$("#birthday_msg").empty();
$("#place_msg").empty();
$("#memo_msg").empty();
});

});
