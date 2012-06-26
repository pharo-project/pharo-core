*Morphic
keyboardFocusForAMorph: aMorph

	
	aMorph ifNil: [^ self].
	[ | left bottom pos |
		pos := aMorph preferredKeyboardPosition.
		left := (pos x min: Display width max: 0) asInteger.
		bottom := (pos y min: Display height max: 0) asInteger
			 + (aMorph paragraph
				characterBlockForIndex: aMorph editor selectionInterval first) height.
		self setCompositionWindowPositionX: left y: bottom
	] on: Error
	do: [:ex |].
