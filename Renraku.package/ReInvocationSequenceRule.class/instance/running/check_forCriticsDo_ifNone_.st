check: anAST forCriticsDo: aCriticBlock ifNone: alternativeBlock
	
	(self  preCheck: anAST forCriticsDo: aCriticBlock) &  
	(self postCheck: anAST forCriticsDo: aCriticBlock)

		ifFalse: alternativeBlock 