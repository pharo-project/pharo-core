measureLabelWidthFor: aText
	| f |
	
	labelMorph ifNil: [ ^ 0 ].
	
	f := labelMorph fontToUse.
	^(((((f widthOfString: aText) max: labelMorph minimumWidth)  @ f height) + (labelMorph layoutInset * 2)) ceiling) x