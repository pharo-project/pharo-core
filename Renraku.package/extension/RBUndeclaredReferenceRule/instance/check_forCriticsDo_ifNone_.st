check: aMethod forCriticsDo: aCriticBlock ifNone: alternativeBlock 

	(aMethod ast allChildren 
		select: [ :node |
			node isVariable and: [
			node isUndeclared and: [
			node name first isUppercase ]]]
		thenCollect: [ :node | aCriticBlock cull:
			(ReStringBasedCritic
				for: aMethod
				by: self
				badString: node name) ])
	
	ifEmpty: alternativeBlock value 