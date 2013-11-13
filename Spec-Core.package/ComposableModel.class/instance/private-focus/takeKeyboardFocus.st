takeKeyboardFocus

	self focusOrder ifNotEmpty:[:focus | ^ focus first takeKeyboardFocus ].
	^ self widget ifNotNil: [ :w | w ==self ifFalse: [ w takeKeyboardFocus ] ]