LogicalFont emphasis
weightValue
	^(styleName includesSubString: 'Bold')
		ifTrue:[LogicalFont weightBold] 
		ifFalse:[LogicalFont weightRegular]