tagsForVariable: aString from: aContext
	^ (aContext reservedNames includes: aString) 
		ifTrue: [ #() ]
		ifFalse: [ self variableTypeOf: aString in: aContext ]
			
	