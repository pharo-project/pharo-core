newFaceFromFile: fileName index: anInteger
	| answer |
	valid := nil.
	answer := super newFaceFromFile: fileName index: anInteger.
	valid := super isValid.
	^answer
	