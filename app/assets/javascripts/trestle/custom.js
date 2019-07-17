// This file may be used for providing additional customizations to the Trestle
// admin. It will be automatically included within all admin pages.
//
// For organizational purposes, you may wish to define your customizations
// within individual partials and `require` them here.
//
//  e.g. //= require "trestle/custom/my_custom_js"
//= require "trestle/imgupload.js"

$(function(){
	$(document).on("click", ".delImg", function(){
		var getId = $(this).data("id")
		var curStr = $("#project_delImg").val();

		$(this).parents(".row").fadeOut(300);

		if(curStr == ""){
			curStr = getId;
		}else{
			curStr = curStr + "," + getId;
		}

		$("#project_delImg").val(curStr);

		event.preventDefault();
	})
})
