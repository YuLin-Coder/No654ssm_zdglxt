$(function() {

$("#sno").blur(
		function() {
			$("#sno_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#sno").after("<span id='sno_msg' style='color: red'>账单号不能为空</span>");
			}
	});

$("#goodsid").blur(
		function() {
			$("#goodsid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#goodsid").after("<span id='goodsid_msg' style='color: red'>物资不能为空</span>");
			}
	});

$("#price").blur(
		function() {
			$("#price_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#price").after("<span id='price_msg' style='color: red'>单价不能为空</span>");
			}
	});

$("#num").blur(
		function() {
			$("#num_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#num").after("<span id='num_msg' style='color: red'>数量不能为空</span>");
			}
	});

$("#total").blur(
		function() {
			$("#total_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#total").after("<span id='total_msg' style='color: red'>总计不能为空</span>");
			}
	});







$('#sub').click(function(){
var sno = $("#sno").val();
var goodsid = $("#goodsid").val();
var price = $("#price").val();
var num = $("#num").val();
var total = $("#total").val();
$("#sno_msg").empty();
$("#goodsid_msg").empty();
$("#price_msg").empty();
$("#num_msg").empty();
$("#total_msg").empty();
if (sno == "" || sno == null) {
	$("#sno").after("<span id='sno_msg' style='color: red'>账单号不能为空</span>");
	return false;
}
if (goodsid == "" || goodsid == null) {
	$("#goodsid").after("<span id='goodsid_msg' style='color: red'>物资不能为空</span>");
	return false;
}
if (price == "" || price == null) {
	$("#price").after("<span id='price_msg' style='color: red'>单价不能为空</span>");
	return false;
}
if (num == "" || num == null) {
	$("#num").after("<span id='num_msg' style='color: red'>数量不能为空</span>");
	return false;
}
if (total == "" || total == null) {
	$("#total").after("<span id='total_msg' style='color: red'>总计不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#sno_msg").empty();
$("#goodsid_msg").empty();
$("#price_msg").empty();
$("#num_msg").empty();
$("#total_msg").empty();
});

});
