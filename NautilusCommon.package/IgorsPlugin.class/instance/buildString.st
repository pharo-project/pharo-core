as yet unclassified
buildString

	| mdl |
	mdl := self model.
	
	^ mdl selectedClass
		ifNil: [ '' ]
		ifNotNil: [:class |
			mdl selectedMethod
				ifNil: [ (RGCommentDefinition realClass: class) timeStamp asTimeStamp asString ]
				ifNotNil: [:method | method methodReference timeStamp asTimeStamp asString ]]