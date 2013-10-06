initializeContext: aContext 
	self outerContext: aContext outerContext asASTInterpreterContext.
	self arguments: aContext arguments.
	aContext tempNames do: [:tempName |
		self temporaries at: tempName put: (aContext tempNamed: tempName)]