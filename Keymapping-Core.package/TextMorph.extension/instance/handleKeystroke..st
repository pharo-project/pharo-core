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
	self keyStroke: anEvent.
	anEvent wasHandled: true.