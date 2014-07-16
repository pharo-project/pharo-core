buildString

	| mdl stringBuilder |
	
	mdl := self model.
	stringBuilder := WriteStream on: ''.
	
	mdl selectedClass
		ifNil: [ '' ]
		ifNotNil: [:class |
			mdl selectedMethod
				ifNil: [ stringBuilder nextPutAll: (RGCommentDefinition realClass: class) timeStamp asDateAndTime asString.
					 ]
				ifNotNil: [:method | 
					stringBuilder nextPutAll:  (AnnotationRequest onClass: class selector:  method selector) getAnnotations.
				 ]].
		
	^ stringBuilder contents