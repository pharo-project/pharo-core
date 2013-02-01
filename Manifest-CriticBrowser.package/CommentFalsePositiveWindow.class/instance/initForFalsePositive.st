initialization
initForFalsePositive
	self initTextForFalsePositive.
	
	okCancelToolBarModel okAction: [ | manifestBuilder rId rV|
		rId :=  rule class uniqueIdentifierName.
		rV :=   rule class identifierMinorVersionNumber.
		manifestBuilder := BuilderManifest on: critic.
		
		(manifestBuilder hasFalsePositiveOf: rId version: rV) 
			ifFalse: [manifestBuilder installFalsePositiveOf: rId version: rV].
		
		manifestBuilder
			addFalsePositive: critic  withComment:  (commentInputFieldModel getText)  of: rId version: rV]