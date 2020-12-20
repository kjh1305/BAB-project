$(document).ready(function() {
	setTimeout(function() {
		var parentWidth = $("#mainContent").width();
		var width = parentWidth / 100 * 80;
		var margin = (parentWidth - width) / 2;
		
		$("#cardBox").width(width);
		$("#cardBox").css("margin-left", margin);
		$("#cardBox").css("margin-right", margin);
	}, 1);
});

$("#mobile-collapse").click(function() {
	setTimeout(function() {
		var parentWidth = $("#mainContent").width();
		var width = parentWidth / 100 * 80;
		var margin = (parentWidth - width) / 2;
		
		$("#cardBox").width(width);
		$("#cardBox").css("margin-left", margin);
		$("#cardBox").css("margin-right", margin);
	}, 1);
});

$(window).resize(function() {
	var parentWidth = $("#mainContent").width();
	var width = parentWidth / 100 * 80;
	var margin = (parentWidth - width) / 2;
		
	$("#cardBox").width(width);
	$("#cardBox").css("margin-left", margin);
	$("#cardBox").css("margin-right", margin);
});