testWithRecursion
	|return|
	RecursionStopper during: [return := self testWithRecursion].
	self assert: return isNil.
	^return