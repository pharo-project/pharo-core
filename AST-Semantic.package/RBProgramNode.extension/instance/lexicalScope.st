*ast-semantic-accessing
lexicalScope
	^ self propertyAt: #lexicalScope ifAbsent: [ 
		self parent isNil
			ifFalse: [ self parent lexicalScope ]
			ifTrue: [ self semanticAnnotationMissing ] ]