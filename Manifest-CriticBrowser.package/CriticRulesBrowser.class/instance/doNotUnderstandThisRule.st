private
doNotUnderstandThisRule
	| ruleId versionId manifestBuilder |

	ruleId :=  DoNotUnderstandThisRule uniqueIdentifierName.
	versionId :=  DoNotUnderstandThisRule identifierMinorVersionNumber.

	rulesModel selectedItem ifNotNil: [ :rule |
		manifestBuilder :=  checker manifestBuilderOf: rule class.
		(manifestBuilder hasFalsePositiveOf: ruleId version: versionId) 
			ifFalse: [manifestBuilder installFalsePositiveOf: ruleId version: versionId].
	 	manifestBuilder addFalsePositive: (rule class) of: ruleId version: versionId.
		
		CommentToDoWindow openOnCritic: rule class onRule: DoNotUnderstandThisRule new .
	]

	