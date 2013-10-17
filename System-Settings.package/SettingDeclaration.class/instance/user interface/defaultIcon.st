defaultIcon
	^ (self type = #LogicalFont or: [self realValue isKindOf: AbstractFont])
		ifTrue: [ Smalltalk ui icons smallFontsIcon]
		ifFalse: [ Smalltalk ui icons smallPaintIcon]