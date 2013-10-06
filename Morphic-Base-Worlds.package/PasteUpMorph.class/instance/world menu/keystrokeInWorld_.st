keystrokeInWorld: evt
	"A keystroke was hit when no keyboard focus was set, so it is sent here to the world instead."

	|  aChar ascii |
	aChar := evt keyCharacter.
	(ascii := aChar asciiValue) = 27 ifTrue: "escape key"
		[^ self invokeWorldMenuFromEscapeKey].
	
	(self navigationKey: evt) ifTrue: [^self].
	
	(evt controlKeyPressed not
		and: [(#(1 4 8 28 29 30 31 32) includes: ascii)  "home, end, backspace, arrow keys, space"
			and: [self keyboardNavigationHandler notNil]])
				ifTrue: [self keyboardNavigationHandler navigateFromKeystroke: aChar].

	(evt commandKeyPressed and: [Editor cmdKeysInText])
		ifTrue: [^ self dispatchCommandKeyInWorld: aChar event: evt].

	"It was unhandled. Remember the keystroke."
	self lastKeystroke: evt keyString.
	self triggerEvent: #keyStroke