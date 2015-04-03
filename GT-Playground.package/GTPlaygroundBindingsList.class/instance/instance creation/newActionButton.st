newActionButton
	|margin padding|
	margin := self themer bindingThemer padding + self themer bindingThemer borderWidth.
	padding := (margin / 2) rounded.
	
	^ GLMHintableActionButtonBrick new
		padding: padding;
		margin: {0 . padding};
		marginRight: margin;
		hShrinkWrap;
		pressedColor: self themer buttonPressedColor