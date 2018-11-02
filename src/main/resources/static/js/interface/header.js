var $header = $($('header')[0]);
//$header.css('position','absolute');
$header.animate({position:'absolute',top:'-64px'},2000);

$(document).ready(function(){

	$('body').on('click','#edit-header',function(evt){
		
		$('<div></div>').load('html/edit-header.html div > *',function($contents){
			var popup = window.popup(
						{
							contents: $contents,
							buttons: [],
							onLoad:function($popup){
								$('.mdl-layout__header').css('z-index',1000);
								var $layout = $('.mdl-layout');
									$fixedHeader = $popup.find('#fixed-header');
									$fixedHeader.prop('checked',$layout.hasClass('mdl-layout--fixed-header'));
									componentHandler.upgradeElement($popup.find('.mdl-switch')[0]);
									$title = $popup.find('#title');
									$title.val($layout.find('.mdl-layout-title').text());
									componentHandler.upgradeElement($popup.find('.mdl-textfield')[0]);
									getmdlSelect.init('.getmdl-select');
									$fixedHeader.change(this.onChangeFixedHeader);
									$title.keyup(this.onKeyUpTitle);
								},
							onClose : function(){
								$('.mdl-layout__header').css('z-index','auto');
							},
							onChangeFixedHeader : function(evt){
								$('.mdl-layout').toggleClass('mdl-layout--fixed-header');
							},
							onKeyUpTitle : function(evt){
								$('.mdl-layout').find('.mdl-layout-title').text($(evt.target).val());
							}
						}
					);
		});
		
		
});
});