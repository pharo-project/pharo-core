dependencies
externalCallers
	^ self 
		externalRefsSelect: [:literal | literal isKindOf: Symbol] 
		thenCollect: [:l | l].