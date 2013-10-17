dispatchKeystroke: anEvent
	"A keystroke was hit when no keyboard focus was set, so it is sent here to the world instead."

	|  aChar ascii |
	aChar := anEvent keyCharacter.
	(ascii := aChar asciiValue) = 27 ifTrue: "escape key"
		[^ self invokeWorldMenuFromEscapeKey].
	
	(self navigationKey: anEvent) ifTrue: [^self].
	
	(anEvent controlKeyPressed not
		and: [(#(1 4 8 28 29 30 31 32) includes: ascii)  "home, end, backspace, arrow keys, space"
			and: [self keyboardNavigationHandler notNil]])
				ifTrue: [self keyboardNavigationHandler navigateFromKeystroke: aChar].

	(anEvent commandKeyPressed and: [Editor cmdKeysInText])
		ifTrue: [^ self dispatchCommandKeyInWorld: aChar event: anEvent].

	"It was unhandled. Remember the keystroke."
	self lastKeystroke: anEvent keyString.
	self triggerEvent: #keyStroke.
	super dispatchKeystroke: anEvent