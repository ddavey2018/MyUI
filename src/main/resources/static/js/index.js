
	
	

$(document).ready(function() {

	var content = localStorage['content'];
		loadContent(content ? content : '/indexGrids');
	
	$('.page-content').on('click', 'a button', function(evt) {
		evt.preventDefault();
		var href = $(evt.target).parent().prop('href');
		localStorage['content'] = href;
		loadContent(href);

	})
	
});

function loadContent(href) {
	$('.page-content').load(href);
}