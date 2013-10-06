doIt
	"Set the context to include pool vars of the model.  Then evaluate."
	Smalltalk tools userManager canEvaluateCode ifFalse: [ ^ false ].
	^ self evaluateSelection