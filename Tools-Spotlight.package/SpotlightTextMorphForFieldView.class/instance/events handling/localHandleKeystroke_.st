localHandleKeystroke: evt
	"Answer whether we locally handle the keyStroke event.
	Disregard tabs for now."
	
	(self editView keystrokeFromTextMorph: evt)
		ifTrue: [^ true].
	(self autoAccept and: [evt keyCharacter = Character cr and: [self crAction notNil]])
		 ifTrue: [(self crAction isKindOf: MessageSend)
				ifTrue: [ self crAction value]
				ifFalse: [self crAction value: self text]..
			^ true].

	^false