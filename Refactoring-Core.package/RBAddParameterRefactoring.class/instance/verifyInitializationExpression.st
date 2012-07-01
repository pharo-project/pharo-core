preconditions
verifyInitializationExpression
	| tree |
	tree := RBParser parseExpression: initializer
				onError: 
					[:msg :index | 
					self refactoringError: 'Illegal initialization code because:.' , msg].
	tree isValue 
		ifFalse: 
			[self 
				refactoringError: 'The initialization code cannot be a return node or a list of statements'].
	self checkVariableReferencesIn: tree