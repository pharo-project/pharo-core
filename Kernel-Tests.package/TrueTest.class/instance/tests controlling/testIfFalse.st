testIfFalse
	
	self assert: ((true ifFalse: ['alternativeBlock']) isNil). 