doIt
	"Set the context to include pool vars of the model.  Then evaluate."
	self currentUser canEvaluateCode ifFalse: [ ^ false ].
	^ self evaluateSelection