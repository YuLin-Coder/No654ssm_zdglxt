$(function() {

$("#username").blur(
		function() {
			$("#username_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#username").after("<span id='username_msg' style='color: red'>用户名不能为空</span>");
			}
	});

$("#password").blur(
		function() {
			$("#password_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#password").after("<span id='password_msg' style='color: red'>密码不能为空</span>");
			}
	});

$("#employname").blur(
		function() {
			$("#employname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#employname").after("<span id='employname_msg' style='color: red'>姓名不能为空</span>");
			}
	});

$("#birthday").blur(
		function() {
			$("#birthday_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#birthday").after("<span id='birthday_msg' style='color: red'>出生日期不能为空</span>");
			}
	});

$("#image").blur(
		function() {
			$("#image_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#image").after("<span id='image_msg' style='color: red'>照片不能为空</span>");
			}
	});

$("#contact").blur(
		function() {
			$("#contact_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contact").after("<span id='contact_msg' style='color: red'>联系方式不能为空</span>");
			}
	});

$("#address").blur(
		function() {
			$("#address_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#address").after("<span id='address_msg' style='color: red'>联系地址不能为空</span>");
			}
	});

$("#workdate").blur(
		function() {
			$("#workdate_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#workdate").after("<span id='workdate_msg' style='color: red'>入职日期不能为空</span>");
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
var username = $("#username").val();
var password = $("#password").val();
var employname = $("#employname").val();
var birthday = $("#birthday").val();
var image = $("#image").val();
var contact = $("#contact").val();
var address = $("#address").val();
var workdate = $("#workdate").val();
var memo = $("#memo").val();
$("#username_msg").empty();
$("#password_msg").empty();
$("#employname_msg").empty();
$("#birthday_msg").empty();
$("#image_msg").empty();
$("#contact_msg").empty();
$("#address_msg").empty();
$("#workdate_msg").empty();
$("#memo_msg").empty();
if (username == "" || username == null) {
	$("#username").after("<span id='username_msg' style='color: red'>用户名不能为空</span>");
	return false;
}
if (password == "" || password == null) {
	$("#password").after("<span id='password_msg' style='color: red'>密码不能为空</span>");
	return false;
}
if (employname == "" || employname == null) {
	$("#employname").after("<span id='employname_msg' style='color: red'>姓名不能为空</span>");
	return false;
}
if (birthday == "" || birthday == null) {
	$("#birthday").after("<span id='birthday_msg' style='color: red'>出生日期不能为空</span>");
	return false;
}
if (image == "" || image == null) {
	$("#image").after("<span id='image_msg' style='color: red'>照片不能为空</span>");
	return false;
}
if (contact == "" || contact == null) {
	$("#contact").after("<span id='contact_msg' style='color: red'>联系方式不能为空</span>");
	return false;
}
if (address == "" || address == null) {
	$("#address").after("<span id='address_msg' style='color: red'>联系地址不能为空</span>");
	return false;
}
if (workdate == "" || workdate == null) {
	$("#workdate").after("<span id='workdate_msg' style='color: red'>入职日期不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#username_msg").empty();
$("#password_msg").empty();
$("#employname_msg").empty();
$("#birthday_msg").empty();
$("#image_msg").empty();
$("#contact_msg").empty();
$("#address_msg").empty();
$("#workdate_msg").empty();
$("#memo_msg").empty();
});

});
