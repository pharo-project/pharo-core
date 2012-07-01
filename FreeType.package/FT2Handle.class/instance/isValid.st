printing
isValid
	^handle notNil and: [ handle anySatisfy: [ :b | b isZero not ] ]