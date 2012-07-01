tests - accessing
testTransposed
	| transposedMatrix |
	
	transposedMatrix := matrix1 transposed.
	self assert: (transposedMatrix at:1 at:1) = 1.
	self assert: (transposedMatrix at:1 at:2) = 2.
	self assert: (transposedMatrix at:2 at:1) = 3.
	self assert: (transposedMatrix at:2 at:2) = 4