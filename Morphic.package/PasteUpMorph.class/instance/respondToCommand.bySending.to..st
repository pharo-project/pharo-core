world menu
respondToCommand: aCharacter bySending: aSelector to: aReceiver
	"Respond to the command-key use of the given character by sending the given selector to the given receiver.  If the selector is nil, retract any prior such setting"

	aSelector
		ifNil:
			[self commandKeySelectors removeKey: aCharacter]
		ifNotNil:
			[self commandKeySelectors at: aCharacter put: (MessageSend receiver: aReceiver selector: aSelector)]