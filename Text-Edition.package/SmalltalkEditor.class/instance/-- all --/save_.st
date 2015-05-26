save: aKeyboardEvent
	"Submit the current text.  Equivalent to 'accept' 1/18/96 sw"

	UserManager default canEvaluateCode ifFalse: [ ^ false ].
	self closeTypeIn.
	self accept.
	^ true