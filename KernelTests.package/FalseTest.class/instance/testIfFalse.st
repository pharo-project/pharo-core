tests
testIfFalse
	
	self assert: ((false ifFalse: ['alternativeBlock']) = 'alternativeBlock'). 