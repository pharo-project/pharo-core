dependencies
externalUsers
	^ self 
		externalRefsSelect: [:literal | literal isVariableBinding] 
		thenCollect: [:l | l key]