newActionButtonIn: aPopup
	|margin padding|
	margin := aPopup themer bindingThemer padding + aPopup themer bindingThemer borderWidth.
	padding := (margin / 2) rounded.
	
	^ GLMHintableActionButtonBrick new
		padding: padding;
		margin: {0 . padding};
		marginRight: margin;
		hShrinkWrap;
		pressedColor: aPopup themer buttonPressedColor