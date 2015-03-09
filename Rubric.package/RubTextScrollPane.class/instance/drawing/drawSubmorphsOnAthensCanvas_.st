drawSubmorphsOnAthensCanvas: anAthensCanvas
	"Draw the focus here since we are using inset bounds
	for the focus rectangle."

	super drawSubmorphsOnAthensCanvas: anAthensCanvas.
	(self hasKeyboardFocus or: [ self textArea hasFindReplaceFocus ]) 
		ifTrue: [self drawKeyboardFocusOnAthensCanvas: anAthensCanvas].
