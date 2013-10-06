updateSubMorph: newBounds
	| submorph delta |
	
	delta := StandardFonts codeFont height *2 + 10.
	self submorphs ifEmpty: [ ^ self ].
	submorph := self submorphs first.
	submorph submorphs ifEmpty: [ ^ self ].
	
	submorph height < newBounds height 
		ifTrue: [ 
			" Growing "
			submorph height: newBounds height ].
	submorph submorphs last height > newBounds height 
		ifTrue: [ | height |
			" Shrinking "
			height := submorph submorphs allButLast inject: 0 into: [:sum :e | e height + sum ].
			height := height + ( newBounds height ).
			submorph height: height ]