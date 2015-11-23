check: aMethod forCriticsDo: aCriticBlock ifNone: alternativeBlock 

	(aMethod ast allChildren 
		select: [ :node |
			node isVariable and: [
			node isUndeclared and: [
			node name first isUppercase ]]]
		thenCollect: [ :node | aCriticBlock cull:
			(ReStringSearchCritic
				for: aMethod
				by: self
				badSubstring: node name) ])
	
	ifEmpty: alternativeBlock value 