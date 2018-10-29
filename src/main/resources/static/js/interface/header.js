var $header = $($('header')[0]);
//$header.css('position','absolute');
$header.animate({position:'absolute',top:'-64px'},2000);

$(document).ready(function(){

	$('body').on('click','#edit-header',function(evt){
		
		$('<div></div>').load('html/edit-header.html div > *',function($contents){
			var popup = window.popup(
						{
							contents: $contents,
							onLoad:function($popup){
								var $layout = $('.mdl-layout');
									$fixedHeader = $popup.find('#fixed-header');
									$fixedHeader.prop('checked',$layout.hasClass('mdl-layout--fixed-header'));
									componentHandler.upgradeElement($popup.find('.mdl-switch')[0]);
									$fixedHeader.change(function(evt){
										$layout.toggleClass('mdl-layout--fixed-header');
									});
									
								}
						}
					);
		});
		
		
});
});