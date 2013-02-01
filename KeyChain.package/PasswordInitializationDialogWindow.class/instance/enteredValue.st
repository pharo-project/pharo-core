protocol
enteredValue
	
	^ self cancelled 
		ifTrue: [ nil ]
		ifFalse: [ textEditorMorph text asString ]