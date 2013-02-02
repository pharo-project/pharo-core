*Ring-Monticello
sameAsMCDefinition: anMCMethodDefinition

	^ anMCMethodDefinition selector = self selector 
			and: [ anMCMethodDefinition className = self classSymbol
			and: [ anMCMethodDefinition classIsMeta = self isMetaSide 
			and: [ anMCMethodDefinition category = self protocol ]]]

				