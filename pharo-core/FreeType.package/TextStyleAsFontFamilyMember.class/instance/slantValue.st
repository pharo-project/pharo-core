LogicalFont emphasis
slantValue
	^(styleName includesSubString: 'Italic') 
		ifTrue:[LogicalFont slantItalic] 
		ifFalse:[LogicalFont slantRegular]