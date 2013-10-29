testScaledIntegerWithoutExplicitScale
	
	| aDecimal |
	aDecimal := SqNumberParser parse: '4s'.
	self assert: (aDecimal isKindOf: ScaledDecimal).
	self assert: 0 equals: aDecimal scale.