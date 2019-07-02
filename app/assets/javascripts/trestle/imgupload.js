$(function(){
	$("#project_thumb").change(function(event) {
		var input = $(event.currentTarget);
		console.log('change');
		var file = input[0].files[0];
		var reader = new FileReader();
		reader.onload = function(e){
			console.log('on load');
			image_base64 = e.target.result;
			$("#thumbpreview").html('<img src="' + image_base64 + '" class="thumbimg img-responsive" />')
		}

		reader.readAsDataURL(file);
	});
})