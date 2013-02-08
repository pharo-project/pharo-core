private
addAllCriticToFalsePositive: aCollectionOfCritic forRule: aRule on: aManifestBuilder

	| ruleId versionId  criticss |
	
	criticss := aCollectionOfCritic reject: [:c |
		 falsePositiveClasses includes: (c isCompiledMethod 
			ifTrue: [c methodClass theNonMetaClass] 
			ifFalse:[c])].
	
	ruleId :=  aRule class uniqueIdentifierName.
	versionId :=   aRule class identifierMinorVersionNumber.
	(aManifestBuilder hasFalsePositiveOf: ruleId version: versionId) 
		ifFalse: [aManifestBuilder installFalsePositiveOf: ruleId version: versionId].		
	 aManifestBuilder addAllFalsePositive: criticss of: ruleId version: versionId.

	