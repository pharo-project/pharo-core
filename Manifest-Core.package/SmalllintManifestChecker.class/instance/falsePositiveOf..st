manifest
falsePositiveOf: aRule
	
	|critics rId rV  |
	
	critics := self criticsOf: aRule. 
	
	rId := aRule class uniqueIdentifierName.
	rV := aRule class identifierMinorVersionNumber.

	^ critics select: [:critic |
		(self manifestBuilderOf: critic) isFalsePositive: critic onRule:  rId version: rV]
	