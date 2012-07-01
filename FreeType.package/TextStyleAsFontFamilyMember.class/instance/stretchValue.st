LogicalFont emphasis
stretchValue
	^(styleName includesSubString: 'Condensed') 
		ifTrue:[LogicalFont stretchCompressed]
		ifFalse:[LogicalFont stretchRegular]