initialization
initTextForToDo
	| ruleId versionId  manifestBuilder|
		
	manifestBuilder := 	BuilderManifest on: critic.
	ruleId :=  rule class uniqueIdentifierName.
	versionId :=   rule class identifierMinorVersionNumber.
	
	(manifestBuilder hasToDoOf: ruleId version: versionId)
		ifFalse: [^ self] .
	
	commentInputFieldModel text: ((BuilderManifest on: critic) commentOfToDo: critic onRule: ruleId version: versionId)  