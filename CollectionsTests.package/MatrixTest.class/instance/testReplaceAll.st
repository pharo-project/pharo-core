tests - accessing
testReplaceAll

	matrix1 replaceAll: 1 with: 10.
	self assert: (matrix1 at:1 at:1) = 10.
	self assert: (matrix1 at:2 at:1) = 2.
	self assert: (matrix1 at:1 at:2) = 3.
	self assert: (matrix1 at:2 at:2) = 4.