friend
displayString: aString on: aBitBlt from: startIndex to: stopIndex at: aPoint kern: kernDelta baselineY: baselineY

	| form glyphInfo destX destY hereX nextX actualFont |
	destX := aPoint x.
	glyphInfo := Array new: 5.
	startIndex to: stopIndex do: [:charIndex |
		self glyphInfoOf: (aString at: charIndex) into: glyphInfo.
		form := glyphInfo at: 1.
		hereX := glyphInfo at: 2.
		nextX := glyphInfo at: 3.
		(actualFont := glyphInfo at: 5) ==  aBitBlt lastFont
			ifFalse: [actualFont installOn: aBitBlt].
		destY := baselineY - (glyphInfo at: 4). 
		aBitBlt sourceForm: form.
		aBitBlt destX: destX.
		aBitBlt destY: destY.
		aBitBlt sourceX: hereX; sourceY: 0.
		aBitBlt width: nextX - hereX.
		aBitBlt height: form height.
		aBitBlt copyBits.
		destX := destX + (nextX - hereX) + kernDelta.
	].
	^ destX @ destY
