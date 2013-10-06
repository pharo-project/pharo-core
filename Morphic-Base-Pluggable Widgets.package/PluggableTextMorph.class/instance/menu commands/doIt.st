doIt

	Smalltalk tools userManager canEvaluateCode ifFalse: [ ^ false ].
	self handleEdit: [textMorph editor evaluateSelection]