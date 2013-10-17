widthFor: selector
	
	apiSetters widget ifNil: [ ^ StandardFonts listFont widthOfString: selector ].
	^ selector widthToDisplayInList: apiSetters widget