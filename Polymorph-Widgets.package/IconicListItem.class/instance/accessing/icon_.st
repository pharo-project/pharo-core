icon: anObject

	icon ifNotNil: [ self removeMorph: icon ].
	icon ifNil: [ ^ self ].
	
	icon := anObject asAlphaImageMorph.
	icon ifNotNil: [ "since the text can be removed" 
		self addMorphFront: icon.
		self adjustLayoutBounds]
	