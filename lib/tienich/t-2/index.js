$(document).ready(function(){
	var getHeight = $('.canhcam-utilities-2 .part-list').outerHeight();
	$('.canhcam-utilities-2 .top-list figure').css({
		'height': 'calc(' + getHeight + 'px - 1rem)'
	})
})