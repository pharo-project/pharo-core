check: aMethod forCritiquesDo: aCriticBlock ifNone: alternativeBlock 

	aMethod ast allChildren 
		select: [ :node |
			node isVariable and: [
			node isUndeclared and: [
			node name first isUppercase ]]]
		thenDo: [ :node | aCriticBlock cull:
			(ReTrivialCritique
			withAnchor: (ReSearchStringSourceAnchor
				entity: aMethod 
				string: node name)
			by: self
			hint: node name) ]
		ifNone: alternativeBlock  