events-processing
handlerForMouseDown: evt
	"Answer an object to field the mouseDown event provided, or nil if none"

	| aHandler |
	aHandler := super handlerForMouseDown: evt.
	aHandler == self ifTrue:	[^ self]. "I would get it anyways"
	"Note: This is a hack to allow value editing in viewers"
	((owner wantsKeyboardFocusFor: self) and:
		[self userEditsAllowed]) ifTrue: [^ self].
	^ aHandler