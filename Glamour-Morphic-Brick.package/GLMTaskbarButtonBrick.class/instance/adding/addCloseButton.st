addCloseButton
	|closeButton|
	
	closeButton := GLMActionButtonBrick new.
	closeButton
		icon: GLMUIThemeExtraIcons glamorousClose;
		width: [ :b | b icon width * 1.2 ];
		action: [ self windowBrick delete ].
		
	self pushActionButton: closeButton
	