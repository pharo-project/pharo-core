tab
	| currentX |
	currentX := (alignment = Justified and: [self leadingTab not])
		ifTrue:		"imbedded tabs in justified text are weird"
			[destX + (textStyle tabWidth - (line justifiedTabDeltaFor: spaceCount)) max: destX]
		ifFalse:
			[textStyle
				nextTabXFrom: destX
				leftMargin: leftMargin
				rightMargin: rightMargin].
	lastSpaceOrTabExtent := lastCharacterExtent copy.
	self lastSpaceOrTabExtentSetX: (currentX - destX max: 0).
	currentX >= characterPoint x
		ifTrue: 
			[lastCharacterExtent := lastSpaceOrTabExtent copy.
			^ self crossedX].
	destX := currentX.
	lastIndex := lastIndex + 1.
	^false