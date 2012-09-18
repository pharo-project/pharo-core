utilities
parseExpression: aString
	^ (RBParser parseExpression: aString)
		annotateInClass: self class;
		yourself