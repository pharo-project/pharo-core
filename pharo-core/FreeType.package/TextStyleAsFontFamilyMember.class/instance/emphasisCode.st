squeak emphasis
emphasisCode
	" Answer the squeak emphasis code (1=bold, 2=italic, 3=boldItalic etc"
	| answer |
	answer := 0.
	(styleName includesSubString: 'Italic') 
		ifTrue:[answer := answer bitOr: LogicalFont squeakSlantItalic].
	(styleName includesSubString: 'Condensed')
		ifTrue:[answer := answer bitOr: LogicalFont squeakStretchCondensed].
	(styleName includesSubString: 'Bold')
		ifTrue:[answer := answer bitOr: LogicalFont squeakWeightBold].
	^answer