function popup(options) {

	$glass = $('<div class="glass"></div>');
	$glass.load('html/popup.html .glass > *', function(popup) {
		var $popup = $(popup);
		$('body').append($glass);
		$('body').append($popup);
		
		if(options && options.buttons){
			$popup.append('<div class="mdl-card__actions mdl-card--border"></div>');
			var $actions = $popup.find('.mdl-card__actions');
			$.each(options.buttons,function(index,button){
				$actions.append('<a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" style="float:'+(button.float ? button.float : 'left')+';">'+button.text+'</a>');
			});
			$actions.append('<a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" style="float:right;">Close</a>').click(function(evt){
				if(options.onClose){
					options.onClose();
				}
				$glass.remove();
				$popup.remove();
			});
			$popup.find('.card__actions');
		}
		
		$popup.find('.mdl-card__supporting-text').append(options.contents);
		options.onLoad($popup);
	});

	
}