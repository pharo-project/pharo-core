validation
newFaceFromExternalMemory: aFreeTypeExternalMemory index: anInteger
	| answer |
	valid := nil.
	answer := super newFaceFromExternalMemory: aFreeTypeExternalMemory index: anInteger.
	valid := super isValid.
	^answer
	