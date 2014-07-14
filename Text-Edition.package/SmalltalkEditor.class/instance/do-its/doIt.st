doIt
	"Set the context to include pool vars of the model.  Then evaluate."
	UserManager default canEvaluateCode ifFalse: [ ^ false ].
	^ self evaluateSelection