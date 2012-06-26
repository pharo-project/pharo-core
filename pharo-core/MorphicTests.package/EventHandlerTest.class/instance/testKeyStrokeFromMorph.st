tests
testKeyStrokeFromMorph

	| keyboardEvent |
	keyboardEvent := KeyboardEvent new 
							setType: #keystroke
							buttons: 0
							position: 0@0
							keyValue: 65 "maybe"
							charCode: 97 "$a"
							hand: nil
							stamp: nil.

	morph eventHandler on: #keyStroke send: #value to: true.
	
	self assert: ((morph handleKeystroke: keyboardEvent) == true)