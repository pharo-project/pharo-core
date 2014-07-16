buildString

	| mdl |
	mdl := self model.
	
	^ mdl selectedClass
		ifNil: [ '' ]
		ifNotNil: [:class |
			mdl selectedMethod
				ifNil: [ (RGCommentDefinition realClass: class) timeStamp asDateAndTime asString ]
				ifNotNil: [:method | method methodReference timeStamp asDateAndTime asString ]]