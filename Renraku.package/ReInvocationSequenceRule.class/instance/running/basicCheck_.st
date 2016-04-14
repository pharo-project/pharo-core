basicCheck: anEntity
	
	 self
		check: anEntity
		forCriticsDo: [ ^ true ]
		ifNone: [ ^ false ]