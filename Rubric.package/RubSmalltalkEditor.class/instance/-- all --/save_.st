save: aKeyboardEvent
	"Submit the current text.  Equivalent to 'accept' 1/18/96 sw"

	self currentUser canEvaluateCode ifFalse: [ ^ false ].
	self closeTypeIn.
	self accept.
	^ true