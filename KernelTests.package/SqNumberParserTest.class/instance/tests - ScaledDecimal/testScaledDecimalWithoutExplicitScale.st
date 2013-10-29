testScaledDecimalWithoutExplicitScale
	
	| aDecimal |
	aDecimal := SqNumberParser parse: '0.50s'.
	self assert: (aDecimal isKindOf: ScaledDecimal).
	self assert: 2 equals: aDecimal scale. "description: 'The scale should auto adjust when not provided'"