events-processing
handleKeystroke: anEvent
	"System level event handling."

	| pasteUp |
	anEvent wasHandled ifTrue:[^self].
	(self handlesKeyboard: anEvent) ifFalse:	[^ self].
	anEvent wasHandled: true.
	anEvent keyCharacter = Character tab ifTrue:
		["Allow passing through text morph inside pasteups"
		(self wouldAcceptKeyboardFocusUponTab and:
				[(pasteUp := self pasteUpMorphHandlingTabAmongFields) notNil])
			ifTrue:[^ pasteUp tabHitWithEvent: anEvent]].
	self keyStroke: anEvent