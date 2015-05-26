drawOnAthensCanvas
	"Send all visible lines to the displayScanner for display"

	| cursorPosition delimiter oppositePos rect previousOppositeBlock |
	cursorPosition := self paragraph pointIndex.
	cursorPosition ifNil: [ ^ self ].
	cursorPosition < 2
		ifTrue: [ ^ self ].
	(self closingDelimiters includes: (delimiter := self paragraph string at: cursorPosition - 1))
		ifFalse: [ 
			(self openingDelimiters includes: (delimiter := self paragraph string at: cursorPosition - 1))
				ifFalse: [ ^ self ] ].
	oppositePos := self positionOfOppositeDelimiter: delimiter startingAt: cursorPosition.
	oppositePos = 0
		ifTrue: [ ^ self ].
	previousOppositeBlock := self characterBlockForIndex: oppositePos.
	rect := previousOppositeBlock.
	rect privateSetCorner: (rect corner min: self clippedRectangle bottomRight) + (0 @ 1).
	rect privateSetOrigin: rect origin.
	canvas setPaint: RubTextSelectionColor oppositeDelimiterSelection backgroundColor.
	canvas setShape: rect surface expanded.
	canvas draw.
	canvas setShape: (rect surface insetBy: 0.5).
	(canvas setStrokePaint: Color black)
		width: 1.
	canvas draw.
