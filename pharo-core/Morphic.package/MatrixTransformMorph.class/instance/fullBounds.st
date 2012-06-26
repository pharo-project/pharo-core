layout
fullBounds
	
	fullBounds ifNil:[
		fullBounds := self bounds.
		submorphs do:[:m| | subBounds |
			subBounds := (self transform localBoundsToGlobal: m fullBounds).
			fullBounds := fullBounds quickMerge: subBounds.
		].
	].
	^fullBounds