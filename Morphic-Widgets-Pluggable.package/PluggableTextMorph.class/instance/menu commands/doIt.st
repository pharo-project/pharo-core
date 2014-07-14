doIt

	UserManager default canEvaluateCode ifFalse: [ ^ false ].
	self handleEdit: [textMorph editor evaluateSelection]