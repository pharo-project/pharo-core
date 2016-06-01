check: aMethod forCritiquesDo: aCriticBlock ifNone: alternativeBlock 

	(aMethod ast allChildren 
		select: [ :node |
			node isVariable and: [
			node isUndeclared and: [
			node name first isUppercase ]]]
		thenCollect: [ :node | aCriticBlock cull:
			(ReStringBasedCritique
				for: aMethod
				by: self
				badString: node name) ])
	
	ifEmpty: alternativeBlock value 