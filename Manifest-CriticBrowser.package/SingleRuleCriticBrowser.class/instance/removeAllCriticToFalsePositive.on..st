private
removeAllCriticToFalsePositive: aSetOfCritic on: aManifestBuilder
	| ruleId versionId  |
	

	ruleId :=  rule class uniqueIdentifierName.
	versionId :=   rule class identifierMinorVersionNumber.


	(aManifestBuilder hasFalsePositiveOf: ruleId version: versionId) 
			ifTrue: [ aManifestBuilder removeAllFalsePositive: aSetOfCritic of: ruleId version: versionId].
				
	