events
localHandleKeystroke: evt
	"Answer whether we locally handle the keyStroke event.
	Disregard tabs for now."

	| crAction |
	crAction := search textMorph crAction.
	(search autoAccept and: [ evt keyCharacter = Character cr and: [ crAction notNil ] ])
		 ifTrue: [
			self updateContentsWithMenu.
			(crAction isKindOf: MessageSend)
				ifTrue: [ crAction value]
				ifFalse: [ crAction value: search text].
			
			^true].
	^false