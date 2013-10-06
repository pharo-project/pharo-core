keepLeftMorphsOrder

	leftMorphs size > 1 ifTrue: [ leftMorphs := mouseOverMorphs intersection: leftMorphs ]
	