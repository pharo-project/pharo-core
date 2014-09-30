visibleCursorColor
	^ self class cursorWithFixedColor 
		ifTrue: [ self class defaultColor ]
		ifFalse: [ self textArea backgroundColor contrastingColor alpha: 0.6 ]