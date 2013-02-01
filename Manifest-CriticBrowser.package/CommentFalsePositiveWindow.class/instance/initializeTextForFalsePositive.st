initialization
initializeTextForFalsePositive
| ruleId versionId  manifestBuilder|
		
	manifestBuilder := 	BuilderManifest on: critic.
	ruleId :=  rule class uniqueIdentifierName.
	versionId :=   rule class identifierMinorVersionNumber.
	
	(manifestBuilder hasFalsePositiveOf: ruleId version: versionId)
		ifFalse: [^ self] .
	
	commentInputFieldModel text: ((BuilderManifest on: critic) commentOfFalsePositive: critic onRule: ruleId version: versionId)  