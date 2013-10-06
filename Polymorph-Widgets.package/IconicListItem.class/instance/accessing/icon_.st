icon: anObject

	icon ifNotNil: [ self removeMorph: icon ].
	
	icon := anObject.
	icon ifNotNil: [ "since the text can be removed" 
		self addMorphFront: icon.
		self adjustLayoutBounds]
	