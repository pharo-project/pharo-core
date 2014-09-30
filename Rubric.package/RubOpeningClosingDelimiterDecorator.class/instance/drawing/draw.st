draw
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
	rect privateSetCorner: rect corner + (1 @ 1).
	rect privateSetOrigin: rect origin + (-1 @ 0).
	canvas fillRectangle: rect color: RubTextSelectionColor oppositeDelimiterSelection backgroundColor.
	canvas frameRectangle: rect color: Color black