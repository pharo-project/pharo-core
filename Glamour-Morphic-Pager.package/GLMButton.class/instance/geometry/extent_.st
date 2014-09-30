extent: newExtent

	super extent: newExtent.
	
	labelMorph ifNotNil: [ self positionLabel ].
	