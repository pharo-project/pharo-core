tests
testSimulateKeystroke

	| textMorph |
	textMorph := TextMorph new contents: ''; openInWorld.
	textMorph takeKeyboardFocus.
	self simulateKeyStroke: $s.
	self assert: textMorph contents = 's'.
	textMorph delete.