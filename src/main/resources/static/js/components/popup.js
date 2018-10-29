function popup(options) {

	$glass = $('<div class="holder"></div>');
	$glass.load('html/popup.html .glass > *', function(popup) {
		var $popup = $(popup);
		$('body').append($popup);
		$popup.find('.mdl-card__supporting-text').append(options.contents);
		options.onLoad($popup.find('.popup-card'));
	});

}