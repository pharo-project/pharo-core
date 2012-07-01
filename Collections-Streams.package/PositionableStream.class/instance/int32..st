data get/put
int32: anInteger
	"Store the given signed, 32-bit integer on this (binary) stream."

	| n |
	(anInteger < -16r80000000) | (anInteger >= 16r80000000)
		ifTrue: [self error: 'outside 32-bit integer range'].

	anInteger < 0
		ifTrue: [n := 16r100000000 + anInteger]
		ifFalse: [n := anInteger].
	self nextPut: (n digitAt: 4).
	self nextPut: (n digitAt: 3).
	self nextPut: (n digitAt: 2).
	self nextPut: (n digitAt: 1).
