drawCheckOn: aCanvas in: aRectangle
	| center offset dRect childSelected |
	
	center := aRectangle center.
	offset := (self checkWidth / 2.0) truncated.
	dRect := (center x - offset) @ (center y - offset) corner: (center x + offset) @ (center y + offset).
	childSelected := self isPartialMatch.
	
	self selected
		ifTrue: [ self 
			drawCheckedIconOn: aCanvas 
			at: dRect ]
		ifFalse: [ 
			childSelected
				ifTrue: [ 
					self 
						drawPartialCheckedIconOn: aCanvas 
						rectangle: dRect 
						at: center 
						offset: offset ]
				ifFalse: [ 
					 self 
						drawUncheckedIconOn: aCanvas 
						at: dRect ] ]