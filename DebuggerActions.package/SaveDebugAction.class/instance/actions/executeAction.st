executeAction

	self session 
		recompileMethodTo: sourceCode 
		inContext: self currentContext 
		notifying: nil