menu
addAllCriticToFalsePositive: aSetOfCritic on: aManifestBuilder
	
	| ruleId versionId  |
	ruleId :=  rule class uniqueIdentifierName.
	versionId :=   rule class identifierMinorVersionNumber.
	(aManifestBuilder hasFalsePositiveOf: ruleId version: versionId) 
		ifFalse: [aManifestBuilder installFalsePositiveOf: ruleId version: versionId].		
	 aManifestBuilder addAllFalsePositive: aSetOfCritic of: ruleId version: versionId.
	