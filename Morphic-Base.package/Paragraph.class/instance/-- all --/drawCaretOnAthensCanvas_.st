drawCaretOnAthensCanvas: anAthensCanvas
	| rect |
	(self showCaret not or: [ selectionStart isNil ])
		ifTrue: [ ^ self ].
	rect := selectionStart origin corner: selectionStart corner.
	caretRect := rect topLeft extent: 1 @ rect height.
	anAthensCanvas setStrokePaint: self insertionPointColor.
	anAthensCanvas drawShape: self caretRect