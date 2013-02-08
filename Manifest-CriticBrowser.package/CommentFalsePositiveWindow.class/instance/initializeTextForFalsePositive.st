initialization
initializeTextForFalsePositive
	| ruleId versionId  manifestBuilder|
	manifestBuilder := BuilderManifest of: critic.
	ruleId :=  rule class uniqueIdentifierName. 
	versionId := rule class identifierMinorVersionNumber.
	
	(manifestBuilder hasFalsePositiveOf: ruleId version: versionId)
		ifFalse: [^ self] .
	
	commentInputFieldModel text: ((BuilderManifest of: critic) commentOfFalsePositive: critic onRule: ruleId version: versionId)  