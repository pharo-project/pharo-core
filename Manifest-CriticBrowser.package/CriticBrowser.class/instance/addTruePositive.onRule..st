private
addTruePositive: aItem onRule: aRule	

	| ruleId versionId manifestBuilder |
	ruleId :=  aRule class uniqueIdentifierName.
	versionId :=   aRule class identifierMinorVersionNumber.
	manifestBuilder :=  checker manifestBuilderOf: aItem.
	(manifestBuilder hasTruePositiveOf: ruleId version: versionId) 
			ifFalse: [manifestBuilder installTruePositiveOf: ruleId version: versionId].
	manifestBuilder addTruePositive: aItem of: ruleId version: versionId.
	
	