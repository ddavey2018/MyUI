
$(document).ready(function() {
	var $elem = $('.page-content');
	var content = localStorage['content'];
	loadContent(content ? content : '/indexGrids');

	$elem.on('click', 'a button', function(evt) {
		evt.preventDefault();
		var href = $(evt.target).parent().prop('href');
		if (!$(evt.target).parent().data('full-screen')) {
			localStorage['content'] = href;
			loadContent(href);

		}
	});

	$elem.on('click','#add-interface',function(evt) {
		var $form = $('#navi-form');
		$($form.find('#page')[0]).val('interface');
		$form.submit();
	});

});

function loadContent(href) {
	$('.page-content').load(href);
}