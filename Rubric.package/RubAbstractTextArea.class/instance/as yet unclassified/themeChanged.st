themeChanged
	
	(self decoratorNamed: #shoutStyler) ifNotNil: [ :styler | 
		styler refreshStyling 
	].

	super themeChanged