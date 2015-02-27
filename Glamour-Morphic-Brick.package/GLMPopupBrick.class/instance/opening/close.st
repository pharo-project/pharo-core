close

	(self owner isKindOf: GLMFoundationBrick)
		ifTrue: [ self owner delete ]
		ifFalse: [ self delete ]