*Keymapping-Core-override
handleKeystroke: anEvent 
	"System level event handling."
	| pasteUp |

	anEvent wasHandled
		ifTrue: [^ self].
	self allowsKeymapping
		ifTrue: [ self dispatchKeystrokeForEvent: anEvent ] .
	anEvent wasHandled
		ifTrue: [^ self].
	(self handlesKeyStroke: anEvent)
		ifFalse: [^ self].
	anEvent keyCharacter = Character tab
		ifTrue: ["Allow passing through text morph inside pasteups"
			pasteUp := self pasteUpMorphHandlingTabAmongFields.
			(self wouldAcceptKeyboardFocusUponTab
					and: [(pasteUp) notNil])
				ifTrue: [^ pasteUp tabHitWithEvent: anEvent]].
	self keyStroke: anEvent.
	anEvent wasHandled: true.