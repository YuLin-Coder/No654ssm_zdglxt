$(function() {

$("#sno").blur(
		function() {
			$("#sno_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#sno").after("<span id='sno_msg' style='color: red'>账单号不能为空</span>");
			}
	});

$("#customername").blur(
		function() {
			$("#customername_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#customername").after("<span id='customername_msg' style='color: red'>客户名称不能为空</span>");
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
var sno = $("#sno").val();
var customername = $("#customername").val();
var memo = $("#memo").val();
$("#sno_msg").empty();
$("#customername_msg").empty();
$("#memo_msg").empty();
if (sno == "" || sno == null) {
	$("#sno").after("<span id='sno_msg' style='color: red'>账单号不能为空</span>");
	return false;
}
if (customername == "" || customername == null) {
	$("#customername").after("<span id='customername_msg' style='color: red'>客户名称不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#sno_msg").empty();
$("#customername_msg").empty();
$("#memo_msg").empty();
});

});
