renderCustomScrollButtonIcons: anIcons for: aButton
	| normalIcon focusedIcon source iconSize|
	
	anIcons isCollection ifTrue: [ 
		normalIcon := anIcons first.
		focusedIcon := anIcons second.
	]
	ifFalse: [ 
		focusedIcon := anIcons.
		normalIcon := (AlphaImageMorph new image: anIcons asGrayScaleWithAlpha; alpha: 0.6) cachedForm.
	].

	iconSize := pagerModel circleButtonSize @ pagerModel circleButtonSize.
	
	source := GLMForm scaleForm: normalIcon to: iconSize / 1.6.
	normalIcon := GLMForm increaseFormExtentCentered: source to: iconSize.
	
	source := GLMForm scaleForm: focusedIcon to: iconSize / 1.6.
	focusedIcon := GLMForm increaseFormExtentCentered: source to: iconSize.
	
	aButton checkedIcon: normalIcon.
	aButton checkedFocusedIcon: focusedIcon.
	
	aButton image state normal: normalIcon.
	aButton image state selected: focusedIcon.
	aButton image state checked: aButton checkedIcon.