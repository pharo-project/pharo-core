menu
addCriticToFalsePositive: aCritic

	| ruleId versionId manifestBuilder |
	ruleId :=  rule class uniqueIdentifierName.
	versionId :=   rule class identifierMinorVersionNumber.
	manifestBuilder := checker manifestBuilderOf: aCritic.
	(manifestBuilder hasFalsePositiveOf: ruleId version: versionId) 
		ifFalse: [manifestBuilder installFalsePositiveOf: ruleId version: versionId].		
	 manifestBuilder addFalsePositive: aCritic of: ruleId version: versionId.
	