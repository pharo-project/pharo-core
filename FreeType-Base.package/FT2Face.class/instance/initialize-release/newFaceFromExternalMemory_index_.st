newFaceFromExternalMemory: aFreeTypeExternalMemory index: anInteger
	| memSize |

	aFreeTypeExternalMemory validate.
	memSize := aFreeTypeExternalMemory bytes size.
	[self 
		primNewFaceFromExternalMemory: aFreeTypeExternalMemory 
		size: memSize 
		index: anInteger]
			on: FT2Error 
			do:[:e |"need to do something here?"].
	self isValid ifTrue:[self class register: self]